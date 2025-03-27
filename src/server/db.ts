import { PrismaClient } from "@prisma/client";

import { env } from "~/env";

const createPrismaClient = () => {
  try {
    const client = new PrismaClient({
      log:
        env.NODE_ENV === "development" ? ["query", "error", "warn"] : ["error"],
    });
    
    // Testa la connessione al database
    client.$connect().catch((e) => {
      console.error("Errore durante la connessione al database:", e);
      throw e;
    });
    
    return client;
  } catch (e) {
    console.error("Errore nella creazione del client Prisma:", e);
    throw e;
  }
};

const globalForPrisma = globalThis as unknown as {
  prisma: ReturnType<typeof createPrismaClient> | undefined;
};

export const db = globalForPrisma.prisma ?? createPrismaClient();

if (env.NODE_ENV !== "production") globalForPrisma.prisma = db;
