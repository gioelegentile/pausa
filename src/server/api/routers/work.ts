import moment from "moment";
import { z } from "zod";

import {
  createTRPCRouter,
  protectedProcedure,
  publicProcedure,
} from "~/server/api/trpc";

export const workRouter = createTRPCRouter({

  // POST /api/work/create
  // payload: { tmdbId: number }
  // response: { id: number, tmdbId: number, createdAt: string }

  create: publicProcedure
    .input(z.object({ tmdbId: z.number() }))
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          tmdbId: input.tmdbId,
          createdAt: moment().toISOString()
        },
      });
    }),

  getAllRated: publicProcedure
    .input(
      z.array(
        z.object(
          {
            orderBy: z.string(),
            orderDirection: z.enum(["asc", "desc"])
          }
        )
      )
    )
    .query(async ({ ctx, input }) => {
      const works = await ctx.db.work.findMany({
        orderBy: input.map(i => ({
          [i.orderBy]: i.orderDirection
        }))
      });

      return works ?? [];
    }),

  getByTmdbId: publicProcedure
    .input(z.number())
    .query(async ({ ctx, input }) => {
      const work = await ctx.db.work.findFirst({
        where: {
          tmdbId: input
        }
      });

      return work ?? null;
    }),

  // getSecretMessage: protectedProcedure.query(() => {
  //   return "you can now see this secret message!";
  // }),

});
