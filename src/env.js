import { createEnv } from "@t3-oss/env-nextjs";
import { z } from "zod";

export const env = createEnv({
  /**
   * Specify your server-side environment variables schema here. This way you can ensure the app
   * isn't built with invalid env vars.
   */
  server: {
    // Rimuoviamo le variabili AUTH_ di NextAuth e aggiungiamo quelle per Cloudflare
    POLICY_AUD: z.string(),
    TEAM_DOMAIN: z.string(),
    DATABASE_URL: z.string().url(),
    TMDB_API_KEY: z.string(),
    NODE_ENV: z
      .enum(["development", "test", "production"])
      .default("development"),
    APP_VERSION: z.string(),
  },

  /**
   * Specify your client-side environment variables schema here. This way you can ensure the app
   * isn't built with invalid env vars. To expose them to the client, prefix them with
   * `NEXT_PUBLIC_`.
   */
  client: {
    // NEXT_PUBLIC_CLIENTVAR: z.string(),
  },

  /**
   * You can't destruct `process.env` as a regular object in the Next.js edge runtimes (e.g.
   * middlewares) or client-side so we need to destruct manually.
   */
  runtimeEnv: {
    POLICY_AUD: process.env.POLICY_AUD,
    TEAM_DOMAIN: process.env.TEAM_DOMAIN,
    DATABASE_URL: process.env.DATABASE_URL,
    TMDB_API_KEY: process.env.TMDB_API_KEY,
    NODE_ENV: process.env.NODE_ENV,
    APP_VERSION: process.env.APP_VERSION,
  },
  /**
   * Run `build` or `dev` with `SKIP_ENV_VALIDATION` to skip env validation. This is especially
   * useful for Docker builds.
   */
  skipValidation: !!process.env.SKIP_ENV_VALIDATION,
  /**
   * Makes it so that empty strings are treated as undefined. `SOME_VAR: z.string()` and
   * `SOME_VAR=''` will throw an error.
   */
  emptyStringAsUndefined: true,
});
