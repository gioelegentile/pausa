"use client";

import {
  faFilter,
  faFilterCircleXmark,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import React, { useEffect, useState } from "react";
import { type Filters, filtersInitialState } from "~/app/_models/filters";
import { api } from "~/trpc/react";
import Dialog from "~/app/_components/ui/dialog";
import { type MediaType } from "~/app/_models/works";

type FiltersProps = {
  mediaType: MediaType;
  onConfirm: (filters: Filters) => void;
};

export function Filters({ mediaType, onConfirm }: FiltersProps) {
  const [filtering, setFiltering] = useState(false);
  const [filtersOpen, setFiltersOpen] = useState(false);
  const [filters, setFilters] = useState<Filters>(filtersInitialState);

  const { data: directors } =
    api.work.getAllUniqueDirectors.useQuery(mediaType);
  const { data: genres } = api.work.getAllUniqueGenres.useQuery(mediaType);

  const handleOpen = () => {
    setFiltersOpen(true);
  };

  const handleConfirm = () => {
    onConfirm(filters);
    setFiltersOpen(false);
  };

  const handleReset = () => {
    setFilters(filtersInitialState);
  };

  useEffect(() => {
    if (
      filters.director !== filtersInitialState.director ||
      filters.genre !== filtersInitialState.genre ||
      filters.minYear !== filtersInitialState.minYear ||
      filters.maxYear !== filtersInitialState.maxYear
    ) {
      setFiltering(true);
    } else {
      setFiltering(false);
    }
  }, [filters]);

  return (
    <div
      className="flex cursor-pointer items-center justify-between rounded-lg p-2 hover:bg-gray-600"
      onClick={handleOpen}
    >
      <FontAwesomeIcon
        icon={filtering ? faFilterCircleXmark : faFilter}
        className="text-gray-200"
      />
      <div className="ml-3 text-sm text-gray-200">Filtri</div>

      <Dialog isOpen={filtersOpen} onClose={() => setFiltersOpen(false)}>
        <h2 className="text-lg font-bold text-white">Filtri</h2>
        <div className="mt-4">
          <label className="mb-2 block text-sm font-medium text-gray-900 dark:text-white">
            Regista
          </label>
          <select
            className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500"
            value={filters.director ?? ""}
            onChange={(e) =>
              setFilters({
                ...filters,
                director: e.target.value ? e.target.value : undefined,
              })
            }
          >
            <option value="">Seleziona un regista</option>
            {directors!.map((director) => (
              <option key={director} value={director}>
                {director}
              </option>
            ))}
          </select>
        </div>
        <div className="mt-4">
          <label className="mb-2 block text-sm font-medium text-gray-900 dark:text-white">
            Range anno di uscita
          </label>
          <div className="flex items-center space-x-4">
            <select
              className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500"
              value={filters.minYear}
              onChange={(e) =>
                setFilters({ ...filters, minYear: Number(e.target.value) })
              }
            >
              <option value="">Anno minimo</option>
              {Array.from(
                { length: new Date().getFullYear() - 1899 },
                (_, i) => 1900 + i,
              ).map((year) => (
                <option key={year} value={year}>
                  {year}
                </option>
              ))}
            </select>
            <select
              className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500"
              value={filters.maxYear}
              onChange={(e) =>
                setFilters({ ...filters, maxYear: Number(e.target.value) })
              }
            >
              <option value="">Anno massimo</option>
              {Array.from(
                { length: new Date().getFullYear() - 1899 },
                (_, i) => 1900 + i,
              ).map((year) => (
                <option key={year} value={year}>
                  {year}
                </option>
              ))}
            </select>
          </div>
        </div>
        <div className="mt-4">
          <label className="mb-2 block text-sm font-medium text-gray-900 dark:text-white">
            Genere
          </label>
          <select
            className="block w-full rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:focus:border-blue-500 dark:focus:ring-blue-500"
            value={filters.genre ?? ""}
            onChange={(e) =>
              setFilters({
                ...filters,
                genre: e.target.value ? e.target.value : undefined,
              })
            }
          >
            <option value="">Seleziona un genere</option>
            {genres!.map((genre) => (
              <option key={genre} value={genre}>
                {genre}
              </option>
            ))}
          </select>
        </div>
        <div className="mt-4 flex justify-end space-x-2">
          <button
            className="cursor-pointer rounded-md bg-gray-500 px-4 py-2 text-white hover:bg-gray-400"
            onClick={handleReset}
          >
            Reset
          </button>
          <button
            className="cursor-pointer rounded-md bg-gradient-to-br from-purple-600 to-blue-500 px-4 py-2 text-white hover:bg-gradient-to-bl"
            onClick={handleConfirm}
          >
            Conferma
          </button>
        </div>
      </Dialog>
    </div>
  );
}
