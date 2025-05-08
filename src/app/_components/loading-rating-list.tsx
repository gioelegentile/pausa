export function Single() {
  return (
    <div className="flex border-b border-gray-700 p-4 transition-colors hover:bg-gray-800/30">
      <div className="relative mr-4 h-25 w-15 flex-shrink-0 rounded-xl bg-gray-700">
        &nbsp;
      </div>
      <div className="flex-1">
        <div className="flex items-start justify-between">
          <div>
            <h2 className="h-4 w-30 rounded-xl bg-gray-700">&nbsp;</h2>
            <div className="my-2 flex h-4 w-30 flex-wrap items-center gap-2 rounded-xl bg-gray-700">
              <span>&nbsp;</span>
            </div>
          </div>
          <div className="flex flex-col items-end gap-2 sm:flex-row sm:items-center sm:gap-0">
            <div className="flex items-center rounded bg-green-600/20 px-2 py-1 sm:mr-2">
              <div className="flex items-center">
                <div className="mr-1 flex">&nbsp;</div>
                <div className="text-xs font-medium text-emerald-400">
                  &nbsp;
                </div>
                <span className="ml-1 text-xs text-gray-300 italic">
                  &nbsp;
                </span>
              </div>
            </div>
            <div className="flex items-center rounded bg-yellow-600/20 px-2 py-1">
              <div className="flex items-center">
                <div className="mr-1 flex">&nbsp;</div>
                <div className="text-xs font-medium text-yellow-400">
                  &nbsp;
                </div>
                <span className="ml-1 text-xs text-gray-300">&nbsp;</span>
              </div>
            </div>
          </div>
        </div>
        <div className="mt-1 line-clamp-2 text-xs text-gray-400">&nbsp;</div>
      </div>
    </div>
  );
}

export function FiltersLoading() {
  return (
    <div className="flex w-full justify-end p-4">
      <div className="h-8 w-15 rounded-sm bg-gray-700">&nbsp;</div>
    </div>
  );
}

export function LoadingRatingList() {
  return (
    <div className="w-full animate-pulse">
      <div className="flex w-full flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20">
        {Array.from({ length: 10 }, (_, index) => (
          <Single key={index} />
        ))}
      </div>
    </div>
  );
}

export function LoadingRatingListWithFilters() {
  return (
    <div className="w-full animate-pulse">
      <FiltersLoading />
      <div className="flex w-full flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20">
        {Array.from({ length: 10 }, (_, index) => (
          <Single key={index} />
        ))}
      </div>
    </div>
  );
}
