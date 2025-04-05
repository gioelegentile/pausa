import { StarIcon as StarSolid } from "@heroicons/react/24/solid";
import { StarIcon as StarOutline } from "@heroicons/react/24/outline";

type RatingProps = {
  value: number;
  votes?: number;
  mine?: boolean;
  className?: string;
};

export function Rating({ value, votes, mine = false, className = "" }: RatingProps) {
  // Funzione per generare le stelle piene e vuote
  const renderStars = () => {
    const totalStars = 5;
    const starValue = Math.min(Math.max(value / 2, 0), 5); // Normalizza da 0-10 a 0-5
    const fullStars = Math.floor(starValue);
    const hasHalfStar = starValue - fullStars >= 0.5;

    const stars = [];

    // Stelle piene
    for (let i = 0; i < fullStars; i++) {
      stars.push(
        <StarSolid
          key={`full-${i}`}
          className={`h-4 w-4 ${mine ? 'text-emerald-400' : 'text-yellow-400'}`}
        />
      );
    }

    // Stelle vuote
    for (let i = fullStars + (hasHalfStar ? 1 : 0); i < totalStars; i++) {
      stars.push(
        <StarOutline
          key={`empty-${i}`}
          className={`h-4 w-4 ${mine ? 'text-emerald-400/50' : 'text-yellow-400/50'}`}
        />
      );
    }

    return stars;
  };

  return (
    <div className={`flex items-center ${className}`}>
      <div className="flex mr-1">
        {renderStars()}
      </div>
      <p className={`text-xs font-medium ${mine ? 'text-emerald-400' : 'text-yellow-400'}`}>
        {value.toFixed(1)}
      </p>
      {!mine && votes && votes > 0 && (
        <span className="text-xs text-gray-300 ml-1">
                    ({votes > 999 ? `${(votes/1000).toFixed(1)}k` : votes})
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