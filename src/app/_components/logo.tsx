"use client";

import Link from "next/link";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCirclePause } from "@fortawesome/free-solid-svg-icons";

export default function Logo() {
  return (
    <div className="absolute top-4 left-4 z-10">
      <Link href="/" className="flex items-center gap-2">
        <div className="flex h-12 w-12 items-center justify-center rounded-full bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 focus:outline-none dark:focus:ring-blue-800">
          <FontAwesomeIcon
            icon={faCirclePause}
            size="2x"
            style={{ color: "#ffffff" }}
          />
        </div>

        <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-2xl font-semibold text-transparent">
          Pausa
        </span>
      </Link>
    </div>
  );
}
