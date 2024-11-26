"use client";

import { StarIcon } from "@heroicons/react/16/solid";

type RatingProps = {
    value: number;
    votes?: number;
};

export function Rating({ value, votes }: RatingProps) {
    return (
        <div className="flex items-center">
            <StarIcon className="h-6 w-6 text-yellow-400" />
            <p className="ms-2 text-sm font-bold text-white dark:text-gray-400">
                {value.toFixed(2)}
            </p>
            <span className="w-1 h-1 mx-1.5 bg-white rounded-full dark:bg-gray-400"></span>
            <span
                className="text-sm font-medium text-white dark:text-gray-400">
                {votes} voti
            </span>
        </div>
    );
}