"use client";

import Link from "next/link";
import Logo from "./logo";
import LoginVideo from "./Login_video";
import { Search } from "./search";
import { type CloudflareSession } from "~/server/auth/cloudflare";

interface LoginPageProps {
  session: CloudflareSession | null;
}

function LoginPage({ session }: LoginPageProps) {
  return (
    <main className="relative h-screen">
      <Logo />

      {!session?.user && <LoginVideo />}

      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          {session?.user && (
            <p className="mt-6 bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-center text-2xl text-transparent">
              Logged in as {session.user.name}
            </p>
          )}

          {!session?.user && (
            <div className="flex h-screen items-center justify-center">
              <div className="w-full max-w-md rounded-lg bg-white px-8 py-12 shadow-2xl">
                <h2 className="text-center text-4xl font-extrabold text-gray-900">
                  Welcome to{" "}
                  <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent">
                    Pausa
                  </span>
                </h2>

                <div className="mt-8 text-center">
                  <p className="text-gray-600">
                    Autenticazione gestita tramite Cloudflare Zero Trust.
                  </p>
                </div>
              </div>
            </div>
          )}

          {session?.user && <Search />}
        </div>
      </div>
    </main>
  );
}

export default LoginPage;
