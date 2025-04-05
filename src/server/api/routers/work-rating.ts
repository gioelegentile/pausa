import moment from "moment";
import { z } from "zod";

import {
    createTRPCRouter,
    publicProcedure,
} from "~/server/api/trpc";

export const workRatingRouter = createTRPCRouter({

    create: publicProcedure
        .input(z.object({
            workId: z.number(),
            externalId: z.number(),
            rating: z.number(),
        }))
        .mutation(async ({ ctx, input }) => {
            return ctx.db.workRating.create({
                data: {
                    externalId: input.externalId,
                    rating: input.rating,
                    workId: input.workId,
                    userId: ctx.session.user!.id,
                    updatedAt: moment().toISOString(),
                    createdAt: moment().toISOString()
                },
            });
        }),

    update: publicProcedure
        .input(z.object({
            id: z.string(),
            tmdbId: z.number(),
            rating: z.number(),
        }))
        .mutation(async ({ ctx, input }) => {
            return ctx.db.workRating.update({
                where: {
                    id: input.id,
                },
                data: {
                    rating: input.rating,
                    updatedAt: moment().toISOString()
                },
            });
        }),

    getByExternalId: publicProcedure
        .input(z.number())
        .query(async ({ ctx, input }) => {
            const rating = await ctx.db.workRating.findFirst({
                where: {
                    externalId: input,
                    userId: ctx.session.user!.id
                }
            });

            return rating ?? null;
        }),

});
