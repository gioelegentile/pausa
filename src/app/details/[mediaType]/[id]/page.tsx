import { type MediaType, type MovieCredits, type WorkModelDetail } from "~/app/_models/works";
import { env } from "~/env";
import { HydrateClient } from "~/trpc/server";
import React from "react";
import { DetailMovieComponent } from "~/app/_components/detail-movie";
import { DetailTvShowComponent } from "~/app/_components/detail-tvshow";


export default async function DetailsPage({
  params,
}: {
  params: Promise<{ mediaType: MediaType, id: number}>;
}) {

  const { mediaType, id } = await params;
  const detailResp = await fetch(`${env.URL}/api/details/${mediaType}?id=${id}`)
  const creditsResp = await fetch(`${env.URL}/api/details/${mediaType}/credits?id=${id}`)

  
  // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
  const detail: WorkModelDetail = await detailResp.json()
  // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
  const credits: MovieCredits = await creditsResp.json()
        
  return (
    <HydrateClient>
      {(mediaType === 'movie' ?
        <DetailMovieComponent
        mediaType={mediaType}
        id={id}
        detail={detail}
        credits={credits}
        /> : mediaType === 'tvshow' ?
        <DetailTvShowComponent
        mediaType={mediaType}
        id={id}
        detail={detail}
        credits={credits}
        /> : null
      )}
    </HydrateClient>
  );
}