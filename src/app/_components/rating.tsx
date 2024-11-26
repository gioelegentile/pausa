import { StarIcon } from "@heroicons/react/16/solid";

type RatingProps = {
    value: number;
};

export function Rating({ value }: RatingProps) {
    return (
        <div className="flex gap-2">
            <StarIcon className="h-6 w-6 text-yellow-400" />
            <p className="text-lg">
                {value.toFixed(1)}
            </p>
        </div>
    )
}