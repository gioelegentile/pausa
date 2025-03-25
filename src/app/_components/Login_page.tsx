"use client";

import { Session } from "next-auth";
import Link from "next/link";
import Logo from "./logo";
import LoginVideo from "./Login_video";
import { Search } from "./search";
import DiscordButton from "./discordbutton";

interface LoginPageProps {
  session: Session | null;
}

function LoginPage({ session }: LoginPageProps) {
  return (
    <main className="relative h-screen">
      <Logo />

      {!session?.user && <LoginVideo />}

      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          {session?.user && (
            <Link
              href="/api/auth/signout"
              className="absolute top-4 right-4 me-2 mb-2 rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-5 py-2.5 text-sm font-medium text-white hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300"
            >
              Sign out
            </Link>
          )}

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

                <div className="mt-8 flex justify-center">
                  <DiscordButton />
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
