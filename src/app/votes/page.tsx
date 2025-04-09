import { HydrateClient } from "~/trpc/server";
import { VotesContent } from "~/app/_components/votes-content";

export default async function Votes() {
  return (
    <HydrateClient>
      <VotesContent />
    </HydrateClient>
  );
}
