export function LoadingSearch() {
  return (
    <div className="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 md:gap-6 lg:grid-cols-6">
      {new Array(12).fill(null).map((_, index) => (
        <div key={index} className="animate-pulse rounded-xl bg-gray-500">
          <div className="aspect-[2/3]" />
        </div>
      ))}
    </div>
  );
}
