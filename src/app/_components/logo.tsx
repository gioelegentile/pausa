"use client";

import Link from "next/link";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCirclePause } from "@fortawesome/free-solid-svg-icons";

export default function Logo() {
  return (
    <div className="absolute top-0 left-0 z-10 m-2 p-2">
      <Link href="/">
        <FontAwesomeIcon
          icon={faCirclePause}
          size="3x"
          style={{ color: "#800080" }}
        />
      </Link>
    </div>
  );
}
