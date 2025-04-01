/* eslint-disable @typescript-eslint/no-unsafe-assignment, @typescript-eslint/no-unsafe-member-access */
import { PrismaAdapter } from "@auth/prisma-adapter";
import { type DefaultSession, type NextAuthConfig } from "next-auth";

import { db } from "~/server/db";

/**
 * Module augmentation for `next-auth` types. Allows us to add custom properties to the `session`
 * object and keep type safety.
 *
 * @see https://next-auth.js.org/getting-started/typescript#module-augmentation
 */
declare module "next-auth" {
  interface Session extends DefaultSession {
    user: {
      id: string;
      // ...other properties
      // role: UserRole;
    } & DefaultSession["user"];
  }

  // interface User {
  //   // ...other properties
  //   // role: UserRole;
  // }
}

/**
 * Options for NextAuth.js used to configure adapters, providers, callbacks, etc.
 *
 * @see https://next-auth.js.org/configuration/options
 */
export const authConfig = {
  providers: [
    {
      id: "cloudflare-google",
      name: "Cloudflare Google",
      type: "oauth",
      // Non abbiamo bisogno di clientId e clientSecret perché li gestisce Cloudflare
      clientId: "cloudflare-proxy",
      clientSecret: "cloudflare-proxy",
      // Questi campi sono necessari ma non vengono usati direttamente
      authorization: { params: { scope: "" } },
      token: { url: "" },
      userinfo: { url: "" },
      // La logica principale è qui
      profile(profile, tokens) {
        // Qui riceviamo i dati dell'utente Google da Cloudflare
        return {
          id: profile.sub,
          email: profile.email,
          name: profile.name,
          image: profile.picture,
        };
      },
    },
  ],
  adapter: PrismaAdapter(db),
  callbacks: {
    session: ({ session, user }) => ({
      ...session,
      user: {
        ...session.user,
        id: user.id,
      },
    }),
    async jwt({ token, user }) {
      // ...existing code...
      return token;
    }
  },
} satisfies NextAuthConfig;
