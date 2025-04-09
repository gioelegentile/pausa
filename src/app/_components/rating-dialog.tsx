import { api } from "~/trpc/react";
import StarRatingSlider from "./star-rating-slider";
import { Work } from "@prisma/client";
import { Movie } from "../api/movies/route";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar, faTextHeight } from '@fortawesome/free-solid-svg-icons';
import { useState } from "react";

type RatingDialogProps = {
    onClose: () => void;
    data: Movie;
    mediaType: "movie" | "tvshow" | "anime" | "game";
};

export default function RatingDialog({ data, mediaType, onClose }: RatingDialogProps) {

    const [rate, setRate] = useState(0);

    const utils = api.useUtils();
    const workMutation = api.work.create.useMutation({
        onSuccess: async () => {
            await utils.work.getByExternalId.invalidate(data.id);
        },
    });
    const createRatingMutation = api.workRating.create.useMutation({
        onSuccess: async () => {
            await utils.workRating.getByExternalId.invalidate(data.id);
        },
    });
    const updateRatingMutation = api.workRating.update.useMutation({
        onSuccess: async () => {
            await utils.workRating.getByExternalId.invalidate(data.id);
        },
    });
    const workQuery = api.work.getByExternalId.useQuery(data.id);
    const rating = api.workRating.getByExternalId.useQuery(data.id);

    const handleSetRate = async (rate: number) => {

        if (rate > 0) {
            setRate(rate);

            try {
                let work: Work | null = null;

                if (workQuery.data) {
                    work = workQuery.data;
                } else {
                    work = await workMutation.mutateAsync(
                        { externalId: data.id, type: mediaType }
                    );
                }

                if (work) {
                    if (rating.data) {
                        updateRatingMutation
                            .mutateAsync({
                                id: rating.data.id,
                                rating: rate,
                            })
                            .catch((error) => console.error("Error updating rating:", error));
                    } else {
                        createRatingMutation
                            .mutateAsync({
                                externalId: data.id,
                                workId: work.id,
                                rating: rate,
                            })
                            .catch((error) => console.error("Error rating media:", error));
                    }
                } else {
                    console.error(
                        "ratingMutation.mutateAsync is not available or work is null",
                    );
                }
            } catch (error) {
                console.error("Error in handleSetRate:", error);
            }

        }

    };

    return (
        <div className="fixed inset-0 flex items-center justify-center z-50 bg-opacity-0">
            <div className="bg-gray-800 shadow-black rounded-lg shadow-lg p-6 w-96 h-80">
                <div className="w-full text-center mb-4 relative flex items-center justify-center" style={{ minHeight: "120px" }}>
                    <FontAwesomeIcon icon={faStar} className={`relative text-yellow-400 transition-all`} style={{ height: `${(rate + 20) * 4}px`}} />
                
                    <div className="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-lg font-semibold text-gray-800">
                        {rate > 0 ? rate : ''}
                    </div>
                </div>
                <h2 className="text-lg font-semibold mb-4 text-white text-center">{data.title}</h2>
                <div className="flex items-center justify-center mb-4">
                    <StarRatingSlider
                        initialRating={0}
                        onChange={handleSetRate}
                    />
                </div>
                <button
                    className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600 text-center w-full"
                    onClick={onClose}
                >
                    Conferma
                </button>
            </div>
        </div>
    );
}