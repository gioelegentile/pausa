export default async function Loading() {

  const single = () => (
    <div className="flex border-b border-gray-700 p-4 transition-colors hover:bg-gray-800/30">
      <div className="relative mr-4 flex-shrink-0 bg-gray-700 w-15 h-25 rounded-xl">&nbsp;</div>
      <div className="flex-1">
        <div className="flex items-start justify-between">
          <div>
            <h2 className="bg-gray-700 w-30 h-4 rounded-xl">&nbsp;</h2>
            <div className="flex flex-wrap items-center gap-2 my-2 bg-gray-700 w-30 h-4 rounded-xl"><span>&nbsp;</span></div>
          </div>
          <div className="flex flex-col items-end gap-2 sm:flex-row sm:items-center sm:gap-0">
            <div className="flex items-center rounded bg-green-600/20 px-2 py-1 sm:mr-2">
              <div className="flex items-center ">
                <div className="mr-1 flex">
                  &nbsp;
                </div>
                <div className="text-xs font-medium text-emerald-400">&nbsp;</div>
                <span className="ml-1 text-xs text-gray-300 italic">&nbsp;</span>
              </div>
            </div>
            <div className="flex items-center rounded bg-yellow-600/20 px-2 py-1">
              <div className="flex items-center ">
                <div className="mr-1 flex">
                  &nbsp;
                </div>
                <div className="text-xs font-medium text-yellow-400">&nbsp;</div>
                <span className="ml-1 text-xs text-gray-300">&nbsp;</span>
              </div>
            </div>
          </div>
        </div>
        <div className="mt-1 line-clamp-2 text-xs text-gray-400">&nbsp;</div>
      </div>
    </div>
  );

  return (
    <div className="animate-pulse w-full">
      <div className="w-full flex justify-end p-4">
        <div className="bg-gray-700 w-15 h-8 rounded-sm">&nbsp;</div>
      </div>
      <div className="flex flex-col rounded-lg border-2 border-gray-700 bg-gray-800/20 w-full">


        {Array.from({ length: 10 }, (_, index) => (
          <div key={index}>
            {single()}
          </div>
        ))}
      </div>
    </div>
  );
}