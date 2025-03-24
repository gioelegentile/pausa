import Link from "next/link";

import { Search } from "~/app/_components/search";
import { auth } from "~/server/auth";
import { api, HydrateClient } from "~/trpc/server";



export default async function Home() {
  const session = await auth();

  if (session?.user) {
    void api.work.getAllRated.prefetch([
      {
        orderBy: 'createdAt',
        orderDirection: 'desc'
      }
    ]);
  }

  return (
<HydrateClient>
  <main className="relative h-screen">

  <div className="absolute top-0 left-0 w-full h-full z-0">
          <video
            className="w-full h-full object-cover"
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
          className="text-white bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 absolute top-4 right-4"
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
