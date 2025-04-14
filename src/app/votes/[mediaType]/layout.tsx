export default async function VotesPageLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <div className="flex-1 px-4 py-8 sm:px-6 lg:px-8">
      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4">
          <div className="text-center">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white">
              I voti della community
            </h1>
            <p className="mt-2 text-xl text-gray-600 dark:text-gray-300">
              Visualizza le classifiche dei voti della community
            </p>
          </div>
          {children}
        </div>
      </div>
    </div>
  );
}