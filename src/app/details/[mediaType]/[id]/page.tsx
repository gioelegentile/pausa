import { MoviesDetailResponse } from "~/app/api/movie/details/route";
import { TvShowDetailResponse } from "~/app/api/tvshow/details/route";
import { MediaType } from "~/app/models/types";
import { env } from "~/env";
import { HydrateClient } from "~/trpc/server";

export default async function DetailsPage({
  params,
}: {
  params: Promise<{ mediaType: MediaType, id: number }>;
}) {
  const { mediaType, id } = await params;

  const detailResp = await fetch(`${env.URL}/api/${mediaType}/details?id=${id}`)

  // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
  const detail: MoviesDetailResponse | TvShowDetailResponse  = await detailResp.json()
        
  return (
    <HydrateClient>
      <div className="flex-1">
        <div className="relative">
          <div className="flex flex-col items-center justify-center gap-4">
            <div className="mx-auto w-full max-w-7xl px-4 py-8 sm:px-6 lg:px-8">
                    DETAIL {detail.backdrop_path}
            </div>
          </div>
        </div>
      </div>
    </HydrateClient>
  );
}