"use client";

import Logo from "./logo";
import { Search } from "./search";
import { type CloudflareSession } from "~/server/auth/cloudflare";

interface MainPageProps {
  session: CloudflareSession | null;
}

function MainPage({ session }: MainPageProps) {
  return (
    <main className="relative h-screen">
      <Logo />

      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          <p className="mt-6 bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-center text-2xl text-transparent">
            Logged in as {session?.user?.name}
          </p>
          <Search />
        </div>
      </div>
    </main>
  );
}

export default MainPage;
