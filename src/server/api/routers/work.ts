import moment from "moment";
import { z } from "zod";

import { createTRPCRouter, protectedProcedure } from "~/server/api/trpc";

export const workRouter = createTRPCRouter({
  create: protectedProcedure
    .input(
      z.object({
        externalId: z.number(),
        type: z.enum(["movie", "tvshow", "anime", "game"]),
        title: z.string().optional(),
        director: z.string().optional(),
        description: z.string().optional(),
        imageUrl: z.string().optional(),
        releaseDate: z.date().optional(),
        country: z.string().optional(),
        genres: z.string().optional(),
      }),
    )
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          ...input,
          createdAt: moment().toISOString(),
        },
      });
    }),

  getAllUniqueDirectors: protectedProcedure
    .input(z.enum(["movie", "tvshow", "anime", "game"]))
    .query(async ({ ctx, input }) => {
      const works = await ctx.db.work.findMany({
        where: {
          type: input,
        },
        select: {
          director: true,
        },
      });

      return Array.from(
        new Set(
          works
            .map((work) => work.director)
            .filter((w) => !!w)
            .map((w) => w!),
        ),
      );
    }),

  getAllUniqueGenres: protectedProcedure
    .input(z.enum(["movie", "tvshow", "anime", "game"]))
    .query(async ({ ctx, input }) => {
      const works = await ctx.db.work.findMany({
        where: {
          type: input,
        },
        select: {
          genres: true,
        },
      });

      return Array.from(
        new Set(
          works
            .map((work) => work.genres)
            .filter((w) => !!w)
            .map((g) => g!.split(",").map((g) => g.trim()))
            .flat(),
        ),
      );
    }),

  getByExternalId: protectedProcedure
    .input(z.number())
    .query(async ({ ctx, input }) => {
      const work = await ctx.db.work.findFirst({
        where: {
          externalId: input,
        },
      });

      return work ?? null;
    }),

  /**
   * Infinite query to get a chunk of works. It allows to infinite scroll.
   */
  getInfiniteWorks: protectedProcedure
    .input(
      z.object({
        cursor: z.number().optional(), // id dell'ultimo work
        limit: z.number().min(1).max(50).default(10),
        type: z.enum(["movie", "tvshow", "anime", "game"]),
        director: z.string().optional(),
        genre: z.string().optional(),
        minYear: z.number(),
        maxYear: z.number(),
      }),
    )
    .query(async ({ ctx, input }) => {
      const { cursor, limit, type, director, genre, minYear, maxYear } = input;

      // 1. Ottieni lavori con media rating, ordinati per media discendente
      const worksWithAvg = await ctx.db.workRating.groupBy({
        by: ["workId"],
        _avg: {
          rating: true,
        },
        _count: {
          rating: true,
        },
        where: {
          work: {
            type: type,
            director: director,
            genres: {
              contains: genre,
            },
            releaseDate: {
              gte: new Date(minYear, 0, 1),
              lte: new Date(maxYear, 11, 31),
            },
          },
        },
        orderBy: {
          _avg: {
            rating: "desc",
          },
        },
      });

      // 3. Paginazione
      const startIndex = cursor
        ? worksWithAvg.findIndex((w) => w.workId === cursor) + 1
        : 0;

      const paginatedIds = worksWithAvg
        .map((w) => w.workId)
        .slice(startIndex, startIndex + limit + 1);

      const works = await ctx.db.work.findMany({
        where: {
          id: {
            in: paginatedIds,
          },
          type: type,
          ...(director ? { director } : {}),
        },
        include: {
          ratings: true,
        },
      });

      // Manteniamo l'ordinamento originale (altrimenti `findMany` restituisce i risultati disordinati)
      const worksOrdered = paginatedIds
        .map((id) => works.find((w) => w.id === id))
        .map((w) => {
          if (!w) return null;

          const workRating = worksWithAvg.find((wr) => wr.workId === w.id);

          return {
            ...w,
            averageRating: workRating?._avg.rating ?? null,
            ratingsCount: workRating?._count.rating ?? null,
            myRating: ctx.session.user
              ? (w.ratings.find((r) => r.userId === ctx.session.user.id)
                  ?.rating ?? null)
              : null,
          };
        })
        .filter(Boolean);

      const hasMore = worksOrdered.length > limit;
      const items = worksOrdered.slice(0, limit);
      const nextCursor = hasMore ? items[items.length - 1]!.id : undefined;

      return {
        works: items,
        nextCursor,
      };
    }),
});
