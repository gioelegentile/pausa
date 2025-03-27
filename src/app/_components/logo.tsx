"use client";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCirclePause } from "@fortawesome/free-solid-svg-icons";

type LogoProps = {
  className?: string;
  showText?: boolean;
};

export default function Logo({ className = "", showText = true }: LogoProps) {
  return (
    <>
      <div className={`flex items-center gap-2 ${className}`}>
        <div className="flex h-10 w-10 items-center justify-center rounded-full bg-gradient-to-br from-purple-600 to-blue-500">
          <FontAwesomeIcon
            icon={faCirclePause}
            size="lg"
            style={{ color: "#ffffff" }}
          />
        </div>

        {showText && (
          <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-xl font-semibold text-transparent">
            Pausa
          </span>
        )}
      </div>
    </>
  );
}
