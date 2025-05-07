import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPause } from "@fortawesome/free-solid-svg-icons";
import Link from "next/link";

export default function Logo() {
  return (
    <div className="top-4 left-4 z-10">
      <Link href="/" className="flex items-center gap-2">
        <div className="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 focus:outline-none dark:focus:ring-blue-800">
          <FontAwesomeIcon icon={faPause} className="h-6 w-6 text-white" />
        </div>

        <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-lg font-semibold text-transparent">
          Pausa
        </span>
      </Link>
    </div>
  );
}
