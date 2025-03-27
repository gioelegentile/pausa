import moment from "moment";
import { z } from "zod";
import { TRPCError } from "@trpc/server";

import {
  createTRPCRouter,
  protectedProcedure,
  publicProcedure,
} from "~/server/api/trpc";

export const commentRouter = createTRPCRouter({
  // Crea un nuovo commento
  create: publicProcedure
    .input(z.object({
      workId: z.number(),
      tmdbId: z.number(),
      content: z.string().min(1).max(1000),
    }))
    .mutation(async ({ ctx, input }) => {
      // Verifica se l'utente è autenticato
      if (!ctx.session?.user) {
        throw new TRPCError({
          code: "UNAUTHORIZED",
          message: "Devi essere loggato per commentare",
        });
      }

      try {
        // Verifica se l'opera esiste
        const work = await ctx.db.work.findFirst({
          where: { 
            id: input.workId,
            tmdbId: input.tmdbId
          }
        });

        if (!work) {
          throw new TRPCError({
            code: "NOT_FOUND",
            message: "Opera non trovata",
          });
        }

        // Crea il commento
        return await ctx.db.comment.create({
          data: {
            content: input.content,
            tmdbId: input.tmdbId,
            workId: input.workId,
            userId: ctx.session.user.id,
            createdAt: moment().toISOString(),
            updatedAt: moment().toISOString(),
          },
          include: {
            user: {
              select: {
                name: true,
                image: true,
              },
            },
          },
        });
      } catch (error) {
        console.error("Errore nella creazione del commento:", error);
        if (error instanceof TRPCError) {
          throw error;
        }
        throw new TRPCError({
          code: "INTERNAL_SERVER_ERROR",
          message: "Errore durante la creazione del commento",
          cause: error,
        });
      }
    }),

  // Ottieni commenti per un'opera specifica tramite TMDB ID
  getByTmdbId: publicProcedure
    .input(z.number())
    .query(async ({ ctx, input }) => {
      const comments = await ctx.db.comment.findMany({
        where: {
          tmdbId: input,
        },
        include: {
          user: {
            select: {
              name: true,
              image: true,
            },
          },
        },
        orderBy: {
          createdAt: 'desc',
        },
      });

      return comments;
    }),

  // Elimina un commento (solo il proprietario può eliminarlo)
  delete: publicProcedure
    .input(z.string())
    .mutation(async ({ ctx, input }) => {
      if (!ctx.session?.user) {
        throw new TRPCError({
          code: "UNAUTHORIZED",
          message: "Devi essere loggato per eliminare un commento",
        });
      }

      const comment = await ctx.db.comment.findUnique({
        where: {
          id: input,
        },
      });

      if (!comment) {
        throw new TRPCError({
          code: "NOT_FOUND",
          message: "Commento non trovato",
        });
      }

      if (comment.userId !== ctx.session.user.id) {
        throw new TRPCError({
          code: "FORBIDDEN",
          message: "Non hai il permesso di eliminare questo commento",
        });
      }

      return ctx.db.comment.delete({
        where: {
          id: input,
        },
      });
    }),

  // Ottieni tutti i commenti di un utente
  getByUser: protectedProcedure
    .query(async ({ ctx }) => {
      const comments = await ctx.db.comment.findMany({
        where: {
          userId: ctx.session.user.id,
        },
        include: {
          work: true,
        },
        orderBy: {
          createdAt: 'desc',
        },
      });

      return comments;
    }),
}); 