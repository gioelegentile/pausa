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
      <main>
        <div>
          <div className="flex flex-col items-center justify-center gap-4">
            <p className="text-center text-2xl text-white">
              {session && <span>Logged in as {session.user?.name}</span>}
            </p>
            <Link
              href={session ? "/api/auth/signout" : "/api/auth/signin"}
              className="rounded-full bg-white/10 px-10 py-3 font-semibold no-underline transition hover:bg-white/20"
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
