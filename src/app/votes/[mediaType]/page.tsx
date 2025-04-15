import { api, HydrateClient } from "~/trpc/server";
import { type MediaType } from "~/app/models/types";
import RatedWorks from "~/app/_components/rated-works";

export default async function Votes({
  params,
}: {
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;

  await api.work.getAllUniqueDirectors.prefetch(mediaType);
  await api.work.getInfiniteWorks.prefetchInfinite({
    limit: 10,
    type: mediaType,
  });

  return (
    <HydrateClient>
      <RatedWorks mediaType={mediaType} />
    </HydrateClient>
  );
}
