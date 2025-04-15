import React from "react";

export default function LoadingSpinner() {
  return (
    <div className="flex items-center justify-center">
      <div className="m-0.5 h-5 w-5 animate-spin rounded-full border-2 border-gray-300 border-t-indigo-600 text-center"></div>
    </div>
  );
}
