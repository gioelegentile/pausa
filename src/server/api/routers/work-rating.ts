import { Prisma } from "@prisma/client";
import moment from "moment";
import { createContext } from "react";
import { z } from "zod";

import {
    createTRPCRouter,
    protectedProcedure,
} from "~/server/api/trpc";

export const workRatingRouter = createTRPCRouter({

    create: protectedProcedure
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
                    userId: ctx.session.user.id,
                    updatedAt: moment().toISOString(),
                    createdAt: moment().toISOString()
                },
            });
        }),

    update: protectedProcedure
        .input(z.object({
            id: z.string(),
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

    createOrUpdate: protectedProcedure
        .input(z.object({
            externalId: z.number(),
            rating: z.number(),
            workId: z.number(),
        }))
        .mutation(async ({ ctx, input }) => {
            const existingRating = await ctx.db.workRating.findFirst({
                where: {
                    externalId: input.externalId,
                    userId: ctx.session.user.id
                }
            });

            if (existingRating) {
                return ctx.db.workRating.update({
                    where: {
                        id: existingRating.id,
                    },
                    data: {
                        rating: input.rating,
                        updatedAt: moment().toISOString()
                    },
                });
            } else {
                return ctx.db.workRating.create({
                    data: {
                        externalId: input.externalId,
                        rating: input.rating,
                        workId: input.workId,
                        userId: ctx.session.user.id,
                        updatedAt: moment().toISOString(),
                        createdAt: moment().toISOString()
                    },
                });
            }
        }
    ),

    getByExternalId: protectedProcedure
        .input(z.number())
        .query(async ({ ctx, input }) => {
            const rating = await ctx.db.workRating.findFirst({
                where: {
                    externalId: input,
                    userId: ctx.session.user.id
                }
            });

            return rating ?? null;
        }),

    getByExternalIds: protectedProcedure
        .input(z.object({
            ids: z.array(z.number()),
        }))
        .query(async ({ ctx, input }) => {
            const ratings = await ctx.db.workRating.findMany({
                where: {
                    externalId: {
                        in: input.ids,
                    },
                    userId: ctx.session.user.id
                }
            });

            return ratings ?? null;
        }),

    getAllRatedByType: protectedProcedure
        .input(z.object({
            limit: z.number().min(1).max(10),
            cursor: z.number().nullish(),
            skip: z.number().optional(),
            type: z.enum(["movie", "tvshow", "anime", "game"]),
            sorting: z.array(z.object({
                orderBy: z.enum(["updatedAt"]),
                orderDirection: z.enum(["asc", "desc"]),
            })),
        }))
        .query(async ({ ctx, input }) => {
            const { limit, skip, cursor, type, sorting } = input;

            let works;

            if (sorting.some(s => s.orderBy === "updatedAt")) {
                works = await ctx.db.workRating.groupBy({
                    by: ["workId", "updatedAt"],
                    orderBy: {
                        updatedAt: "desc",
                    },
                    _avg: {
                        rating: true
                    },
                    _count: {
                        rating: true
                    },
                    take: limit + 1,
                    skip: skip,
                    where: {
                        work: {
                            type: type,
                        },
                    }
                });
            } else { 
                works = await ctx.db.workRating.groupBy({
                    by: ["workId"],
                    orderBy: {
                        _avg: {
                            rating: "desc",
                        },
                    },
                    _avg: {
                        rating: true
                    },
                    _count: {
                        rating: true
                    },
                    take: limit + 1,
                    skip: skip,
                    where: {
                        work: {
                            type: type,
                        },
                    },
                });
            }

            let nextCursor: typeof cursor | undefined = undefined;
            if (works.length > limit) {
              const nextItem = works.pop();
              nextCursor = nextItem?.workId;
            }
      
            return {
              works,
              nextCursor,
            };
        }),

});
