import React, { useState, useEffect } from 'react';

type StarRatingSliderProps = {
    stars?: number;
    currentRating?: number;
    backgroundColor?: string;
    emptyColor?: string;
    color?: string;
    onRatingChange: (rate: number) => void;
    onTempRateChange?: (rate: number) => void;
};

export default function StarRatingSlider({
    stars = 10,
    currentRating = 0,
    backgroundColor = "#1e2939",
    emptyColor = "oklch(0.852 0.199 91.936 / 50%)",
    color = "oklch(0.852 0.199 91.936)",
    onRatingChange,
    onTempRateChange,
}: StarRatingSliderProps) {

    const [tempRating, setTempRating] = useState(currentRating * 10);
    const [selectedRating, setSelectedRating] = useState<number | null>(null);

    const handleMouseHover = (n: number) => {
        if (!selectedRating) {
          setTempRating(((n + 1) / 2) * 10);
        }
    };

    const handleClick = () => {
      setSelectedRating(tempRating);
    };

    useEffect(() => {
      onRatingChange?.((selectedRating ?? 0) / 10);
    }, [selectedRating, onRatingChange]);

    useEffect(() => {
      onTempRateChange?.(tempRating / 10);
    }, [tempRating, onTempRateChange]);

    useEffect(() => {
      setSelectedRating(currentRating === 0 ? null : currentRating * 10);
    }, [currentRating]);

    const path = (n: number) => {
      return (
        <path
            key={n}
            fill={backgroundColor}
            d={`M${n * 100} 0h102v100h-102v-100m91 42a6 6 90 00-4-10l-22-1a1 1 90 01-1 0l-8-21a6 6 90 00-11 0l-8 21a1 1 90 01-1 1l-22 1a6 6 90 00-4 10l18 14a1 1 90 010 1l-6 22a6 6 90 008 6l19-13a1 1 90 011 0l19 13a6 6 90 006 0a6 6 90 002-6l-6-22a1 1 90 010-1z`}
        />
    );}

    const rect = (n: number) => (
        <rect
            onClick={handleClick}
            onMouseMove={() => handleMouseHover(n)}
            key={n}
            x={n * 50}
            opacity="0"
            width="50"
            height="100"
        />
    );

    return (
        <svg viewBox={`0 0 ${stars * 100} 100`} style={{ cursor: "pointer", width: "300px" }}>
            <rect width="100%" height="100" fill={emptyColor} />
            <rect id="rating" width={`${tempRating}%`} height="100" fill={color} />
            {
                Array(stars)
                    .fill(undefined)
                    .map((_, n) => path(n))
            }
            {
                Array(stars * 2)
                    .fill(undefined)
                    .map((_, n) => rect(n))
            }
        </svg>
    );
};
