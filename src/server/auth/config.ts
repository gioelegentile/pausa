// src/auth.ts (semplificato)
import { PrismaAdapter } from "@auth/prisma-adapter";
import { PrismaClient } from "@prisma/client";

// Istanziazione di PrismaClient (usa il pattern singleton per dev)
let prisma: PrismaClient;
if (process.env.NODE_ENV === 'production') {
  prisma = new PrismaClient();
} else {
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-expect-error
  if (!global.prisma) {
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-expect-error
    global.prisma = new PrismaClient();
  }
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-expect-error
  // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
  prisma = global.prisma;
}

// Esporta l'istanza del client DB se serve altrove
export const db = prisma;

// Esporta l'istanza dell'adapter configurata
export const adapter = PrismaAdapter(db);

// NON ESPORTARE ALTRO (niente authConfig, niente NextAuth(...))