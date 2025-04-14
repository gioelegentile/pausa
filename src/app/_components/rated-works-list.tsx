import { type Work } from "@prisma/client";
import { type MediaType } from "~/app/models/types";
import Link from "next/link";
import Image from "next/image";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faFilm } from "@fortawesome/free-solid-svg-icons";
import { Rating } from "~/app/_components/rating";

type EnrichedWork = Work & {
  imageUrl: string | null;
  averageRating: number | null;
  ratingsCount: number | null;
  myRating: number | null;
  releaseDate: Date | null;
  director: string | null;
};

type RatedWorksListProps = {
  mediaType: MediaType;
  works: EnrichedWork[];
  onEndReached?: () => void;
  onTopReached?: () => void;
};

export default function RatedWorksList({
  mediaType,
  works,
  onEndReached,
  onTopReached,
}: RatedWorksListProps) {
  // call onEndReached when the user scrolls to the bottom of the list
  // useEffect(() => {
  //   const handleScroll = () => {
  //     if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
  //       onEndReached?.();
  //     }
  //   };
  //
  //   window.addEventListener("scroll", handleScroll);
  //   return () => {
  //     window.removeEventListener("scroll", handleScroll);
  //   };
  // }, [onEndReached]);

  // call onTopReached when the user scrolls to the top of the list
  // useEffect(() => {
  //   const handleScroll = () => {
  //     if (window.scrollY === 0) {
  //       onTopReached?.();
  //     }
  //   };
  //
  //   window.addEventListener("scroll", handleScroll);
  //   return () => {
  //     window.removeEventListener("scroll", handleScroll);
  //   };
  // }, [onTopReached]);

  document.addEventListener("scrollend", (e) => {
    // console.log("Scrollend", e);
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
      onEndReached?.();
          }
  })

  return (
    <div onScroll={(e) => console.log(e)}>
      {works.map((work, index) => (
        <Link href={`/work/${work.id}`} key={work.id}>
          <div className="flex border-b border-gray-700 p-4 transition-colors hover:bg-gray-800/30">
            <div className="relative mr-4 flex-shrink-0">
              <span className="absolute top-0 left-0 bg-black/60 px-1 text-xs font-medium text-white">
                {index + 1}.
              </span>
              {work.imageUrl ? (
                <Image
                  src={`https://image.tmdb.org/t/p/w92${work.imageUrl}`}
                  alt={work.title ?? ""}
                  className="h-24 w-16 rounded object-cover"
                  objectFit={"cover"}
                  width={200}
                  height={200}
                />
              ) : (
                <div className="inset-0 flex h-24 w-16 flex-col items-center justify-center rounded bg-gray-300">
                  <FontAwesomeIcon
                    icon={faFilm}
                    className="p-2 text-gray-500"
                  />
                </div>
              )}
            </div>
            <div className="flex-1">
              <div className="flex items-start justify-between">
                <div>
                  <h2 className="font-medium text-gray-800 dark:text-white">
                    {work.title}
                  </h2>
                  <div className="flex flex-wrap items-center gap-2 text-sm text-gray-400">
                    {work.releaseDate && (
                      <span>{work.releaseDate.getFullYear()}</span>
                    )}
                  </div>
                </div>
                <div className="flex flex-col items-end gap-2 sm:flex-row sm:items-center sm:gap-0">
                  {work.myRating && (
                    <div className="flex items-center rounded bg-green-600/20 px-2 py-1 sm:mr-2">
                      <Rating value={work.myRating} mine />
                    </div>
                  )}
                  {work.averageRating && (
                    <div className="flex items-center rounded bg-yellow-600/20 px-2 py-1">
                      <Rating
                        value={work.averageRating}
                        votes={work.ratingsCount ?? 0}
                      />
                    </div>
                  )}
                </div>
              </div>

              <div className="mt-1 line-clamp-2 text-xs text-gray-400">
                {work.description}
              </div>

              {work.director && (
                <div className="mt-1 text-xs text-gray-500">
                  {work.director && <span>Regia: {work.director}</span>}
                </div>
              )}
            </div>
          </div>
        </Link>
      ))}
    </div>
  );
}
