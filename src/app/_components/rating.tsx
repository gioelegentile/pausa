import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faStar as faStartSolid } from "@fortawesome/free-solid-svg-icons";

type RatingProps = {
  value: number;
  votes?: number;
  mine?: boolean;
  className?: string;
  isLoading?: boolean;
};

export function Rating({
  value,
  votes,
  mine = false,
  className = "",
  isLoading = false,
}: RatingProps) {
  return (
    <div className={`flex items-center ${className}`}>
      <div className="mr-1 flex">
        <FontAwesomeIcon
          icon={faStartSolid}
          className={`h-4 w-4 ${mine ? "text-emerald-400" : "text-yellow-400"}`}
        />
      </div>
      <div
        className={`text-xs font-medium ${mine ? "text-emerald-400" : "text-yellow-400"}`}
      >
        {isLoading ? (
          <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-green-600"></div>
        ) : (
          value.toFixed(value % 1 === 0 ? 0 : 1)
        )}
      </div>
      {!mine && votes && votes > 0 && (
        <span className="ml-1 text-xs text-gray-300">
          ({votes > 999 ? `${(votes / 1000).toFixed(1)}k` : votes})
        </span>
      )}
      {mine && <span className="ml-1 text-xs text-gray-300 italic">(tuo)</span>}
    </div>
  );
}
