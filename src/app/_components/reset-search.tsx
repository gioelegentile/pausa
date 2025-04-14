import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCircleXmark } from "@fortawesome/free-solid-svg-icons";

type ResetProps = {
  onClick: () => void;
};

export default function Reset({ onClick }: ResetProps) {
  return (
    <button
      type="button"
      className="absolute cursor-pointer inset-y-0 right-0 flex items-center justify-center px-3 text-gray-400 transition-colors hover:text-indigo-600 disabled:opacity-30"
      onClick={onClick}
      aria-label="Reset search"
    >
      <FontAwesomeIcon
        icon={faCircleXmark}
        className="h-5 w-5 text-indigo-600 dark:text-indigo-400"
      />
    </button>
  );
}
