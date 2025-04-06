/* eslint-disable @typescript-eslint/no-unsafe-assignment */
"use client";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPause } from "@fortawesome/free-solid-svg-icons";
import Link from "next/link";

interface LogoProps {
  size?: "small" | "medium" | "large";
  className?: string;
  hideText?: boolean;
  absolute?: boolean;
}

export default function Logo({
  size = "medium",
  className = "",
  hideText = false,
  absolute = false,
}: LogoProps) {
  // Size configurations
  const sizeConfig = {
    small: {
      container: "h-8 w-8",
      icon: "h-6 w-6",
      text: "text-lg",
    },
    medium: {
      container: "h-12 w-12",
      icon: "h-10 w-10",
      text: "text-2xl",
    },
    large: {
      container: "h-16 w-16",
      icon: "h-14 w-14",
      text: "text-3xl",
    },
  };

  const positionClass = absolute ? "absolute top-4 left-4 z-10" : "";

  return (
    <div className={`${positionClass} ${className}`}>
      <Link href="/" className="flex items-center gap-2">
        <div
          className={`flex items-center justify-center rounded-full bg-gradient-to-br from-purple-600 to-blue-500 hover:bg-gradient-to-bl focus:ring-4 focus:ring-blue-300 focus:outline-none dark:focus:ring-blue-800 ${sizeConfig[size].container}`}
        >
          <FontAwesomeIcon icon={faPause}  className={`${sizeConfig[size].icon} text-white`} />
        </div>

        {!hideText && (
          <span
            className={`bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text font-semibold text-transparent ${sizeConfig[size].text}`}
          >
            Pausa
          </span>
        )}
      </Link>
    </div>
  );
}