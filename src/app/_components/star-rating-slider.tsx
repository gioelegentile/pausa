import React, { useCallback, useEffect, useRef, useState } from "react";

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
  const [isDragging, setIsDragging] = useState(false);
  const svgRef = useRef<SVGSVGElement>(null);

  const calculateRating = (n: number) => ((n + 1) / 2) * 10;

  // Helper function to find which rect is being touched based on coordinates
  const findRectIndexFromCoordinates = useCallback(
    (clientX: number) => {
      if (!svgRef.current) return 0;

      const svgRect = svgRef.current.getBoundingClientRect();
      const relativeX = clientX - svgRect.left;
      const svgWidth = svgRect.width;

      // Calculate the relative position within the SVG (0 to 1)
      const relativePosition = Math.max(0, Math.min(1, relativeX / svgWidth));

      // Convert to the rectangle index (0 to stars*2-1)
      const rectIndex = Math.floor(relativePosition * stars * 2);

      return Math.max(0, Math.min(stars * 2 - 1, rectIndex));
    },
    [stars, svgRef],
  );

  // EVENTI DI INIZIO SLIDE
  const handleMouseDown = (n: number) => {
    if (!selectedRating) {
      setIsDragging(true);
      setTempRating(calculateRating(n));
    }
  };
  const handleTouchStart = (n: number) => {
    if (!selectedRating) {
      setIsDragging(true);
      setTempRating(calculateRating(n));
    }
  };

  // EVENTI DI MOVIMENTO SLIDE
  const handleMouseMove = (n: number) => {
    if (!selectedRating) {
      setTempRating(calculateRating(n));
    }
  };
  const handleTouchMove = (e: React.TouchEvent) => {
    if (isDragging && !selectedRating && e.touches.length > 0) {
      // Get the current touch position and determine which rect we're over
      const touch = e.touches[0];
      const n = findRectIndexFromCoordinates(touch!.clientX);
      setTempRating(calculateRating(n));
    }
  };

  // EVENTI DI RILASCIO SLIDE
  const handleMouseUp = () => {
    if (isDragging && !selectedRating) {
      setSelectedRating(tempRating);
      setIsDragging(false);
    }
  };
  const handleTouchEnd = () => {
    if (isDragging && !selectedRating) {
      setSelectedRating(tempRating);
      setIsDragging(false);
    }
  };

  // Uncommented and fixed global event handling
  useEffect(() => {
    if (isDragging) {
      const handleGlobalTouchMove = (e: TouchEvent) => {
        if (isDragging && !selectedRating && e.touches.length > 0) {
          const touch = e.touches[0];
          const n = findRectIndexFromCoordinates(touch!.clientX);
          setTempRating(calculateRating(n));
          e.preventDefault(); // Prevent scrolling while dragging
        }
      };

      const handleGlobalTouchEnd = () => {
        if (isDragging && !selectedRating) {
          setSelectedRating(tempRating);
          setIsDragging(false);
        }
      };

      // Add passive: false to allow preventDefault() on touchmove
      document.addEventListener("touchmove", handleGlobalTouchMove, {
        passive: false,
      });
      document.addEventListener("touchend", handleGlobalTouchEnd);
      document.addEventListener("touchcancel", handleGlobalTouchEnd);

      return () => {
        document.removeEventListener("touchmove", handleGlobalTouchMove);
        document.removeEventListener("touchend", handleGlobalTouchEnd);
        document.removeEventListener("touchcancel", handleGlobalTouchEnd);
      };
    }
  }, [isDragging, selectedRating, tempRating, findRectIndexFromCoordinates]);

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
    );
  };

  const rect = (n: number) => (
    <rect
      onMouseMove={() => handleMouseMove(n)}
      onMouseDown={() => handleMouseDown(n)}
      onMouseUp={handleMouseUp}
      onTouchStart={() => handleTouchStart(n)}
      onTouchEnd={handleTouchEnd}
      key={n}
      x={n * 50}
      opacity="0"
      width="50"
      height="100"
    />
  );

  return (
    <svg
      ref={svgRef}
      viewBox={`0 0 ${stars * 100} 100`}
      style={{ cursor: "pointer", width: "300px" }}
      onTouchMove={handleTouchMove}
    >
      <rect width="100%" height="100" fill={emptyColor} />
      <rect id="rating" width={`${tempRating}%`} height="100" fill={color} />
      {Array(stars)
        .fill(undefined)
        .map((_, n) => path(n))}
      {Array(stars * 2)
        .fill(undefined)
        .map((_, n) => rect(n))}
    </svg>
  );
}
