"use client";

import { useState, useMemo } from "react";
import moment from "moment";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faSort, faSortUp, faSortDown } from "@fortawesome/free-solid-svg-icons";
import { Rating } from "./rating";
import { api } from "~/trpc/react";

type SortColumn = "year" | "title" | "director" | "myRating" | "averageRating";
type SortDirection = "asc" | "desc";

interface TabellaVotiProps {
  mediaType: "movie" | "tvshow" | "anime" | "game";
}

export function TabellaVoti({ mediaType }: TabellaVotiProps) {
  const [sortColumn, setSortColumn] = useState<SortColumn>("title");
  const [sortDirection, setSortDirection] = useState<SortDirection>("desc");

  // Ottenere i voti dell'utente da TRPC
  const { data: votiUtente, isLoading } = api.work.getAllRatedByType.useQuery({ 
    type: mediaType,
    sorting: [
      { orderBy: sortColumn, orderDirection: sortDirection },
    ],
  });

  // Funzione per gestire il cambio di ordinamento
  const handleSort = (column: SortColumn) => {
    if (sortColumn === column) {
      // Se la colonna è già selezionata, inverti la direzione
      setSortDirection(sortDirection === "asc" ? "desc" : "asc");
    } else {
      // Altrimenti, cambia colonna e resetta la direzione a asc
      setSortColumn(column);
      setSortDirection("asc");
    }
  };

  // Icona per l'ordinamento
  const renderSortIcon = (column: SortColumn) => {
    if (sortColumn !== column) {
      return <FontAwesomeIcon icon={faSort} className="ml-1 text-gray-400" />;
    }
    return sortDirection === "asc" ? (
      <FontAwesomeIcon icon={faSortUp} className="ml-1 text-indigo-500" />
    ) : (
      <FontAwesomeIcon icon={faSortDown} className="ml-1 text-indigo-500" />
    );
  };

  if (isLoading) {
    return <div className="mt-8 text-center text-gray-600">Caricamento in corso...</div>;
  }

  if (!votiUtente || votiUtente.length === 0) {
    return (
      <div className="mt-8 rounded-lg border border-gray-200 bg-white p-8 text-center shadow-sm">
        <p className="text-lg font-medium text-gray-600">
          Non hai ancora votato nessuna {mediaType === "movie" ? "pellicola" : "serie TV"}.
        </p>
      </div>
    );
  }

  return (
    <div className="mt-6 overflow-x-auto">
      <table className="min-w-full divide-y divide-gray-200 rounded-lg border border-gray-200 shadow-sm">
        <thead className="bg-gray-50">
          <tr>
            <th
              scope="col"
              className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"
              onClick={() => handleSort("year")}
            >
              Anno {renderSortIcon("year")}
            </th>
            <th
              scope="col"
              className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"
              onClick={() => handleSort("title")}
            >
              Titolo {renderSortIcon("title")}
            </th>
            <th
              scope="col"
              className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"
              onClick={() => handleSort("director")}
            >
              Regista {renderSortIcon("director")}
            </th>
            <th
              scope="col"
              className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"
              onClick={() => handleSort("myRating")}
            >
              Il Tuo Voto {renderSortIcon("myRating")}
            </th>
            <th
              scope="col"
              className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"
              onClick={() => handleSort("averageRating")}
            >
              Media Utenti {renderSortIcon("averageRating")}
            </th>
            {/*<th*/}
            {/*  scope="col"*/}
            {/*  className="cursor-pointer px-6 py-3 text-left text-xs font-medium uppercase tracking-wider text-gray-500"*/}
            {/*  onClick={() => handleSort("votoTmdb")}*/}
            {/*>*/}
            {/*  Media TMDB {renderSortIcon("votoTmdb")}*/}
            {/*</th>*/}
          </tr>
        </thead>
        <tbody className="divide-y divide-gray-200 bg-white">
          {votiUtente.map((voto) => (
            <tr key={voto.id} className="hover:bg-gray-50">
              <td className="whitespace-nowrap px-6 py-4 text-sm text-gray-500">
                {voto.releaseDate ? moment(voto.releaseDate).format("YYYY") : "-"}
              </td>
              <td className="px-6 py-4 text-sm font-medium text-gray-900">
                {voto.title}
              </td>
              <td className="px-6 py-4 text-sm text-gray-500">
                {voto.director ?? "-"}
              </td>
              <td className="px-6 py-4 text-sm text-gray-500">
                <Rating value={voto.myRating ?? 0} mine className="inline-flex" />
              </td>
              <td className="px-6 py-4 text-sm text-gray-500">
                {voto.averageRating ? (
                  <Rating 
                    value={voto.averageRating} 
                    votes={voto.ratingsCount} 
                    className="inline-flex" 
                  />
                ) : (
                  "-"
                )}
              </td>
              {/*<td className="px-6 py-4 text-sm text-gray-500">*/}
              {/*  {voto.tmdbRating ? (*/}
              {/*    <Rating */}
              {/*      value={voto.tmdbRating} */}
              {/*      votes={voto.tmdbVotesCount} */}
              {/*      className="inline-flex" */}
              {/*    />*/}
              {/*  ) : (*/}
              {/*    "-"*/}
              {/*  )}*/}
              {/*</td>*/}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
