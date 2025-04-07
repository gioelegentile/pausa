import { HydrateClient } from "~/trpc/server";
import { Search } from "./_components/search";

export default async function Home() {
  return (
    <HydrateClient>
      <div className="flex-1">
        <div className="relative">
          <div className="flex flex-col items-center justify-center gap-4">
            <Search />
          </div>
        </div>
      </div>
    </HydrateClient>
  );
}
