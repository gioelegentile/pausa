import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar as faStartSolid } from "@fortawesome/free-solid-svg-icons";
import { faStar as faStarRegular } from "@fortawesome/free-regular-svg-icons";
import { faStarHalfStroke } from "@fortawesome/free-solid-svg-icons";
import { useState } from "react";

type RatingProps = {
  value: number;
  votes?: number;
  mine?: boolean;
  className?: string;
};

export function Rating({
  value,
  votes,
  mine = false,
  className = "",
}: RatingProps) {
  const [starValue] = useState(value);

  // Funzione per generare le stelle piene e vuote
  const renderStars = () => {
    const totalStars = 5;
    const fullStars = Math.floor(starValue);
    const emptyStars = Math.floor(totalStars - starValue);
    const hasHalfStar = fullStars + emptyStars < totalStars;

    const stars = [];

    // Stelle piene
    for (let i = 0; i < fullStars; i++) {
      stars.push(
        <FontAwesomeIcon 
          icon={faStartSolid}
          key={`full-${i}`}
          className={`h-4 w-4 ${mine ? "text-emerald-400" : "text-yellow-400"}`}
        />,
      );
    }

    // Stelle mezze
    if (hasHalfStar) {
      stars.push(
        <FontAwesomeIcon 
          icon={faStarHalfStroke} 
          key={`half`}
          className={`h-4 w-4 ${mine ? "text-emerald-400" : "text-yellow-400"}`}
        />,
      );
    }

    // Stelle vuote
    for (let i = 0; i < emptyStars; i++) {
      stars.push(
        <FontAwesomeIcon 
          icon={faStarRegular}
          key={`empty-${i}`}
          className={`h-4 w-4 ${mine ? "text-emerald-400/50" : "text-yellow-400/50"}`}
        />,
      );
    }

    return stars;
  };

  return (
    <div className={`flex items-center ${className}`}>
      <div className="mr-1 flex">{renderStars()}</div>
      <p
        className={`text-xs font-medium ${mine ? "text-emerald-400" : "text-yellow-400"}`}
      >
        {starValue.toFixed(starValue % 1 === 0 ? 0 : 1)}
      </p>
      {!mine && votes && votes > 0 && (
        <span className="ml-1 text-xs text-gray-300">
          ({votes > 999 ? `${(votes / 1000).toFixed(1)}k` : votes})
        </span>
      )}
      {mine && (
        <span className="ml-1 text-xs text-gray-300 italic">
           (tuo)
        </span>
      )}
    </div>
  );
}
