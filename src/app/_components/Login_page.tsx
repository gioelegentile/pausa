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
    <main className="relative flex min-h-screen items-center justify-center bg-gray-100">
      <Logo />

      {!session?.user && <LoginVideo />}

      <div className="relative mx-auto w-full max-w-md px-4">
        {session?.user && (
          <div className="absolute top-4 right-4">
            <Link
              href="/api/auth/signout"
              className="rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-5 py-2.5 text-sm font-medium text-white hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300"
            >
              Sign out
            </Link>
          </div>
        )}

        {session?.user && (
          <p className="mb-4 text-center text-2xl text-white">
            Logged in as {session.user.name}
          </p>
        )}

        {!session?.user && (
          <div className="rounded-lg bg-white p-8 shadow-md">
            <h2 className="mb-4 text-center text-3xl font-extrabold text-gray-900">
              Welcome to Pausa
            </h2>
            <p className="mb-6 text-center text-sm text-gray-600">
              <Link
                href="/signup"
                className="font-medium text-blue-600 hover:text-blue-500"
              >
                Create an account
              </Link>
            </p>

            <form className="space-y-6" method="POST">
              <div>
                <label
                  htmlFor="email"
                  className="mb-2 block text-sm font-medium text-gray-700"
                >
                  Email address
                </label>
                <input
                  id="email"
                  name="email"
                  type="email"
                  required
                  className="w-full rounded-md border-gray-300 px-3 py-2 shadow-sm"
                />
              </div>

              <div>
                <label
                  htmlFor="password"
                  className="mb-2 block text-sm font-medium text-gray-700"
                >
                  Password
                </label>
                <input
                  id="password"
                  name="password"
                  type="password"
                  required
                  className="w-full rounded-md border-gray-300 px-3 py-2 shadow-sm"
                />
              </div>

              <button
                type="submit"
                className="w-full rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-5 py-2.5 text-center text-sm font-medium text-white hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 focus:outline-none dark:focus:ring-blue-800"
              >
                Sign in
              </button>
            </form>

            <div className="mt-6">
              <DiscordButton />
            </div>
          </div>
        )}

        {session?.user && <Search />}
      </div>
    </main>
  );
}

export default LoginPage;
