"use client";

import {
  faFilter,
  faFilterCircleXmark,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { useState } from "react";

type FiltersProps = {
  directors?: string[];
};

export function Filters({ directors }: FiltersProps) {
  const [filtering, setFiltering] = useState(false);
  const [filtersOpen, setFiltersOpen] = useState(false);
  const [filters, setFilters] = useState({
    genres: [],
    releaseDate: null,
    rating: null,
  });

  return (
    <div
      className="flex cursor-pointer items-center justify-between rounded-lg p-2 hover:bg-gray-600"
      onClick={() => setFiltersOpen(true)}
    >
      <FontAwesomeIcon
        icon={filtering ? faFilterCircleXmark : faFilter}
        className="text-gray-200"
      />
      <div className="ml-3 text-sm text-gray-200">Filtri</div>
      {filtersOpen && (
        <div className="absolute inset-0 flex items-center justify-center p-4">
          <div className="rounded-lg bg-gray-900 p-4">
            <h2 className="text-lg font-bold text-white">Filtri</h2>
            {directors && (
              <div className="mt-4">
                <label className="block text-sm font-medium text-gray-200">
                  Regista
                </label>
                <select className="mt-1 block w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 focus:border-indigo-500 focus:ring-indigo-500">
                  <option value="">Seleziona un regista</option>
                  {directors.map((director) => (
                    <option key={director} value={director}>
                      {director}
                    </option>
                  ))}
                </select>
              </div>
            )}
            <button
              className="mt-4 rounded-md bg-red-600 px-4 py-2 text-white"
              onClick={() => setFiltersOpen(false)}
            >
              Chiudi
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
