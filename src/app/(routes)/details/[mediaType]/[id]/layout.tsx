import "~/styles/globals.css";
import Logo from "~/app/_components/logo";
import Link from "next/link";
import { HomeIcon } from "@heroicons/react/24/outline";

export default function DetailsLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="flex flex-col min-h-screen">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 shadow-sm z-10">
        <div className="container mx-auto px-4 py-3 flex justify-between items-center">
          <Link href="/" className="flex items-center">
            <Logo className="h-8 w-auto" />
          </Link>
          
          <nav>
            <Link
              href="/"
              className="flex items-center px-4 py-2 rounded-lg text-gray-700 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors"
            >
              <HomeIcon className="h-5 w-5 mr-1" />
              <span>Home</span>
            </Link>
          </nav>
        </div>
      </header>
      
      {/* Contenuto principale */}
      <main className="flex-grow">
        {children}
      </main>
      
      {/* Footer */}
      <footer className="bg-white dark:bg-gray-800 py-6 border-t border-gray-200 dark:border-gray-700">
        <div className="container mx-auto px-4 text-center text-gray-500 dark:text-gray-400">
          <p>© {new Date().getFullYear()} Pausa. Tutti i diritti riservati.</p>
          <p className="text-xs mt-1">
            Questo prodotto utilizza l'API TMDB ma non è certificato da TMDB.
          </p>
        </div>
      </footer>
    </div>
  );
} 