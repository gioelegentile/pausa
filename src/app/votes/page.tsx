import { api, HydrateClient } from "~/trpc/server";
import { VotesContent } from "~/app/_components/votes-content";

export const dynamic = "force-dynamic";

async function waitFor(ms: number) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

export default async function Votes() {
// await waitFor(4000)
    const a = await api.work.getAllRatedByType({ 
      type: "movie",
      sorting: [],
    });
  return (
    <HydrateClient>
      <VotesContent />
    </HydrateClient>
  );
}
