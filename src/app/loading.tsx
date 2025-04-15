import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCircleNotch } from "@fortawesome/free-solid-svg-icons";

export default function Loading() {
  return (
    <div className="flex items-center justify-center py-20">
      <div className="text-center">
        <FontAwesomeIcon
          icon={faCircleNotch}
          className="h-12 w-12 animate-spin text-indigo-600"
        />
        <p className="mt-4 text-lg font-medium text-gray-700">Caricamento...</p>
      </div>
    </div>
  );
}
