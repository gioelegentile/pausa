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
      clientId: "661680861042-oakvtm6oj6lgalaba1fdj68u6qqs0e41.apps.googleusercontent.com",
      clientSecret: "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",
      // Questi campi sono necessari ma non vengono usati direttamente
      authorization: { params: { scope: "" } },
      token: { url: "" },
      userinfo: { url: "" },
      // La logica principale è qui
      profile: async (profile) => {
        return {
          id: profile.sub,
          name: profile.name,
          email: profile.email,
          image: profile.picture,
        };
      },
    },
  ],
  adapter: PrismaAdapter(db),
  session: {
    strategy: "jwt",
  },
  callbacks: {
    async session({ session, token }) {
      if (token.sub) {
        session.user.id = token.sub;
      }
      return session;
    },
    async jwt({ token, account, profile }) {
      if (account) {
        token.sub = profile?.id!;
      }
      return token;
    },
  },
} satisfies NextAuthConfig;
