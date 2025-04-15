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
      }),
    )
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          ...input, //  TODO add genres
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

  /**
   * Infinite query to get a chunk of works. It allows to infinite scroll.
   */
  getAllRatedByType: protectedProcedure
    .input(
      z.object({
        limit: z.number(),
        cursor: z.number().nullish(),
        skip: z.number().optional(),
        type: z.enum(["movie", "tvshow", "anime", "game"]),
        sorting: z.array(
          z.object({
            orderBy: z.string(),
            orderDirection: z.enum(["asc", "desc"]),
          }),
        ),
      }),
    )
    .query(async ({ ctx, input }) => {
      const { limit, cursor, skip, type, sorting } = input;

      const works = await ctx.db.work
        .findMany({
          take: limit + 1,
          skip: skip,
          cursor: cursor ? { id: cursor } : undefined,
          where: {
            type: type,
          },
          include: {
            ratings: {
              select: {
                rating: true,
                userId: true,
              },
            },
          },
          orderBy: sorting.map((sort) => ({
            [sort.orderBy]: sort.orderDirection,
          })),
        })
        .then((works) => works.map((work) => {
          const ratings = work.ratings.map((r) => r.rating);
          const averageRating =
            ratings.length > 0
              ? ratings.reduce((sum, rating) => sum + rating, 0) /
              ratings.length
              : null;

          return {
            ...work,
            averageRating,
            ratingsCount: ratings.length,
            myRating:
              work.ratings.find((r) => r.userId === ctx.session.user.id)
                ?.rating ?? null,
          };
        })
      )

      let nextCursor: typeof cursor | undefined = undefined;
      if (works.length > limit) {
        const nextItem = works.pop();
        nextCursor = nextItem?.id;
      }

      return {
        works,
        nextCursor,
      };
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
});
