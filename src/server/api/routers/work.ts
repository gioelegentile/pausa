import moment from "moment";
import { z } from "zod";

import {
  createTRPCRouter,
  protectedProcedure,
  publicProcedure,
} from "~/server/api/trpc";

export const workRouter = createTRPCRouter({

  create: publicProcedure
    .input(z.object({ tmdbId: z.number() }))
    .mutation(async ({ ctx, input }) => {
      return ctx.db.work.create({
        data: {
          tmdbId: input.tmdbId,
          createdAt: moment().format("YYYY-MM-DD")
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

  // getSecretMessage: protectedProcedure.query(() => {
  //   return "you can now see this secret message!";
  // }),

});
