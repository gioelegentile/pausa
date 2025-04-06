"use client";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { IconProp } from "@fortawesome/fontawesome-svg-core";
import { faCircleXmark } from "@fortawesome/free-solid-svg-icons";

type ResetProps = {
  onClick: () => void;
  disabled: boolean;
};

export default function Reset({ onClick, disabled }: ResetProps) {
  return (
    <button
      type="button"
      className="absolute inset-y-0 right-0 flex items-center justify-center px-3 text-gray-400 transition-colors hover:text-indigo-600 disabled:opacity-30"
      onClick={onClick}
      disabled={disabled}
      aria-label="Reset search"
    >
      <FontAwesomeIcon
        icon={faCircleXmark}
        className="h-5 w-5"
        style={{ color: "#7c3aed" }}
      />
    </button>
  );
}
