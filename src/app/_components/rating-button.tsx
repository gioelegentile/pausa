type RatingButtonProps = {
  onClickVoting: () => void;
  isLoading: boolean;
  alreadyRated: boolean;
};

export default function RatingButton({ onClickVoting, isLoading, alreadyRated }: RatingButtonProps) {
  return (
    <button
      className="mt-2 h-6 cursor-pointer rounded-md bg-indigo-600 px-2 py-1 text-xs transition-colors hover:bg-indigo-700 text-white w-fit"
      onClick={onClickVoting}
    >
      {isLoading && (
        <div className="h-3 w-3 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600"></div>
      )}
      {!isLoading && <span className="text-nowrap">{alreadyRated ? "Modifica voto" : "Vota"}</span>}
    </button>
  )
}