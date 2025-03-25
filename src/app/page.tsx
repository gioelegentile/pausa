import Link from "next/link";

import { Search } from "~/app/_components/search";
import { auth } from "~/server/auth";
import { api, HydrateClient } from "~/trpc/server";
import Logo from "./_components/logo";

export default async function Home() {
  const session = await auth();

  if (session?.user) {
    void api.work.getAllRated.prefetch([
      {
        orderBy: "createdAt",
        orderDirection: "desc",
      },
    ]);
  }

  return (
    <HydrateClient>
      <main className="relative h-screen">
      <Logo />
        <div className="absolute top-0 left-0 z-0 h-full w-full">
          <video
            className="h-full w-full object-cover"
            src="/background_video.mp4"
            autoPlay
            loop
            muted
            playsInline
          />
        </div>

        <div className="relative">
          <div className="flex flex-col items-center justify-center gap-4">
            <p className="text-center text-2xl text-white">
              {session && <span>Logged in as {session.user?.name}</span>}
            </p>
            <Link
              href={session ? "/api/auth/signout" : "/api/auth/signin"}
              className="absolute top-4 right-4 me-2 mb-2 rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-5 py-2.5 text-center text-sm font-medium text-white hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 focus:outline-none dark:focus:ring-blue-800"
            >
              {session ? "Sign out" : "Sign in"}
            </Link>
          </div>

          {session?.user && <Search />}
        </div>
      </main>
    </HydrateClient>
  );
}
