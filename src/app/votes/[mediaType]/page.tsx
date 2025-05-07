import { api, HydrateClient } from "~/trpc/server";
import { type MediaType } from "~/app/_models/works";
import RatedWorks from "~/app/_components/rated-works";
import { StaleTimes } from "~/app/_utils/stale-times";

export default async function Votes({
  params,
}: {
  params: Promise<{ mediaType: MediaType }>;
}) {
  const { mediaType } = await params;

  await Promise.all([
    api.work.getAllUniqueGenres.prefetch(mediaType, {
      staleTime: StaleTimes.ONE_WEEK,
    }),
    api.work.getAllUniqueDirectors.prefetch(mediaType, {
      staleTime: StaleTimes.ONE_WEEK,
    }),
    api.work.getInfiniteWorks.prefetchInfinite({
      limit: 10,
      type: mediaType,
      minYear: 1900,
      maxYear: new Date().getFullYear(),
    }),
  ]);

  return (
    <HydrateClient>
      <RatedWorks mediaType={mediaType} />
    </HydrateClient>
  );
}
