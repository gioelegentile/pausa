import moment from "moment";
import { title } from "process";
import { z } from "zod";

import {
  createTRPCRouter,
  protectedProcedure,
} from "~/server/api/trpc";

export const workRouter = createTRPCRouter({

  create: protectedProcedure
    .input(z.object({ 
      externalId: z.number(), 
      type: z.enum(["movie", "tvshow", "anime", "game"]),
      title: z.string().optional(),
      year: z.number().optional(),
      director: z.string().optional(),
      posterPath: z.string().optional(),
    }))
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          ...input,
          createdAt: moment().toISOString()
        },
      });
    }),

  getAllRatedByType: protectedProcedure
    .input(
      z.object({
        type: z.enum(["movie", "tvshow", "anime", "game"]),
        sorting: z.array(
          z.object(
            {
              orderBy: z.string(),
              orderDirection: z.enum(["asc", "desc"])
            }
          )
        )
      })
    )
    .query(async ({ ctx, input }) => {
      return await ctx.db.work.findMany({
        where: {
          type: input.type,
        },
        include: {
          WorkRating: {
            select: {
              rating: true,
              userId: true,
            },
          },
        },
        orderBy: input.sorting.map(sort => ({
          [sort.orderBy]: sort.orderDirection,
        })),
      }).then(works => {
        // Calculate average rating for each work
        return works.map(work => {
          const ratings = work.WorkRating.map(r => r.rating);
          const averageRating = ratings.length > 0 
            ? ratings.reduce((sum, rating) => sum + rating, 0) / ratings.length 
            : null;
          
          return {
            ...work,
            averageRating,
            ratingsCount: ratings.length,
            myRating: work.WorkRating.find(r => r.userId === ctx.session.user.id)?.rating ?? null,
          };
        });
      });
    }),

  getByExternalId: protectedProcedure
    .input(z.number())
    .query(async ({ ctx, input }) => {
      const work = await ctx.db.work.findFirst({
        where: {
          externalId: input
        }
      });

      return work ?? null;
    }),

});
