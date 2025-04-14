import Link from "next/link";
import React from "react";

export async function MediaTypeButton({
  active,
  mediaTypeTitle,
  href,
  icon,
}: {
  active: boolean;
  mediaTypeTitle: string;
  href: string;
  icon: React.ReactNode;
}) {
  return (
    <Link
      href={href}
      className={`rounded-lg px-4 py-2.5 text-sm font-medium transition-all duration-200 ${
        active
          ? "bg-gradient-to-br from-purple-600 to-blue-500 text-white shadow-md hover:bg-gradient-to-bl"
          : "border border-gray-300 bg-white text-gray-700 hover:border-indigo-400 hover:text-indigo-600 hover:shadow dark:border-gray-400 dark:bg-gray-600 dark:text-gray-100 dark:hover:text-indigo-300"
      }`}
    >
      <div className="flex flex-col items-center sm:flex-row">
        <span className="order-2 mt-1 sm:order-1 sm:mt-0 sm:ml-2">
          {mediaTypeTitle}
        </span>
        {icon}
      </div>
    </Link>
  );
}
