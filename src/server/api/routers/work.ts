import moment from "moment";
import { z } from "zod";

import {
  createTRPCRouter,
  publicProcedure,
} from "~/server/api/trpc";

export const workRouter = createTRPCRouter({

  create: publicProcedure
    .input(z.object({ externalId: z.number(), type: z.enum(["movie", "tvshow", "anime", "game"]) }))
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          externalId: input.externalId,
          type: input.type,
          createdAt: moment().toISOString()
        },
      });
    }),

  getAllRatedByType: publicProcedure
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
      )})
    )
    .query(async ({ ctx, input }) => {
      const works = await ctx.db.work.findMany({
        orderBy: input.sorting.map(i => ({
          [i.orderBy]: i.orderDirection
        })),
        where: {
          type: input.type
        },
      });

      return works ?? [];
    }),

  getByExternalId: publicProcedure
    .input(z.number())
    .query(async ({ ctx, input }) => {
      const work = await ctx.db.work.findFirst({
        where: {
          externalId: input
        }
      });

      return work ?? null;
    }),

  // getSecretMessage: protectedProcedure.query(() => {
  //   return "you can now see this secret message!";
  // }),

});
