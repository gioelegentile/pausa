"use client";

import { Session } from "next-auth";
import Link from "next/link";
import Logo from "./logo";
import LoginVideo from "./Login_video";
import { Search } from "./search";
import DiscordButton from "./discordbutton";
import { signIn } from "next-auth/react";
import { FilmIcon, TvIcon, UserCircleIcon } from "@heroicons/react/24/outline";
import { ArrowDownTrayIcon, ClipboardDocumentListIcon, ChartBarIcon } from "@heroicons/react/24/outline";

interface LoginPageProps {
  session: Session | null;
}

// Componente per il pulsante Google
const GoogleButton = () => {
  return (
    <button
      onClick={() => signIn("google", { callbackUrl: "/" })}
      className="flex items-center justify-center gap-2 rounded-lg bg-white border border-gray-300 px-5 py-2.5 text-sm font-medium text-gray-700 hover:bg-gray-100 transition-colors"
    >
      <svg width="20" height="20" viewBox="0 0 24 24">
        <path
          d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
          fill="#4285F4"
        />
        <path
          d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
          fill="#34A853"
        />
        <path
          d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
          fill="#FBBC05"
        />
        <path
          d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
          fill="#EA4335"
        />
      </svg>
      Sign in with Google
    </button>
  );
};

function LoginPage({ session }: LoginPageProps) {
  return (
    <main className={`relative min-h-screen ${session?.user ? 'bg-gray-50 dark:bg-gray-900' : ''}`}>
      {/* Video di sfondo solo per gli utenti non loggati */}
      {!session?.user && <LoginVideo />}
      
      {/* Header per utenti loggati */}
      {session?.user && (
        <header className="sticky top-0 z-20 bg-white dark:bg-gray-800 shadow-sm">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="flex justify-between items-center h-16">
              {/* Logo */}
              <div className="flex items-center">
                <Logo />
              </div>
              
              {/* Navigazione */}
              <nav className="hidden md:flex space-x-4">
                <Link 
                  href="/profile" 
                  className="px-3 py-2 text-sm font-medium text-gray-700 dark:text-gray-200 hover:text-indigo-600 dark:hover:text-indigo-400 rounded-md flex items-center"
                >
                  <UserCircleIcon className="h-5 w-5 mr-1" />
                  Profilo
                </Link>
                <Link 
                  href="/dashboard" 
                  className="px-3 py-2 text-sm font-medium text-gray-700 dark:text-gray-200 hover:text-indigo-600 dark:hover:text-indigo-400 rounded-md flex items-center"
                >
                  <ChartBarIcon className="h-5 w-5 mr-1" />
                  Dashboard
                </Link>
                <Link 
                  href="/import" 
                  className="px-3 py-2 text-sm font-medium text-gray-700 dark:text-gray-200 hover:text-indigo-600 dark:hover:text-indigo-400 rounded-md flex items-center"
                >
                  <ArrowDownTrayIcon className="h-5 w-5 mr-1" />
                  Importa
                </Link>
                <Link 
                  href="/watchlist" 
                  className="px-3 py-2 text-sm font-medium text-gray-700 dark:text-gray-200 hover:text-indigo-600 dark:hover:text-indigo-400 rounded-md flex items-center"
                >
                  <ClipboardDocumentListIcon className="h-5 w-5 mr-1" />
                  Watchlist
                </Link>
              </nav>
              
              {/* Avatar e logout */}
              <div className="flex items-center space-x-4">
                <div className="flex items-center">
                  {session.user.image ? (
                    <img 
                      src={session.user.image} 
                      alt={session.user.name || "User"} 
                      className="h-8 w-8 rounded-full border-2 border-indigo-500"
                    />
                  ) : (
                    <UserCircleIcon className="h-8 w-8 text-indigo-500" />
                  )}
                  <span className="ml-2 text-sm font-medium text-gray-700 dark:text-gray-200 hidden md:inline">
                    {session.user.name}
                  </span>
                </div>
                <Link
                  href="/api/auth/signout"
                  className="rounded-lg bg-gradient-to-br from-purple-600 to-blue-500 px-3 py-1.5 text-sm font-medium text-white hover:bg-gradient-to-bl focus:ring-2 focus:ring-blue-300 shadow-sm transition-all"
                >
                  Sign out
                </Link>
              </div>
            </div>
          </div>
        </header>
      )}

      {/* Contenuto principale */}
      <div className="relative">
        {/* Contenuto per utenti non loggati */}
        {!session?.user && (
          <div className="flex h-screen items-center justify-center">
            <div className="w-full max-w-md rounded-lg bg-white px-8 py-12 shadow-2xl">
              <h2 className="text-center text-4xl font-extrabold text-gray-900">
                Welcome to{" "}
                <span className="bg-gradient-to-bl from-blue-400 to-indigo-600 bg-clip-text text-transparent">
                  Pausa
                </span>
              </h2>
              <p className="mt-3 text-center text-gray-600">
                Discover and rate your favorite entertainment
              </p>

              <div className="mt-8 flex flex-col space-y-4 items-center">
                <DiscordButton />
                <div className="relative w-full py-2">
                  <div className="absolute inset-0 flex items-center">
                    <div className="w-full border-t border-gray-300"></div>
                  </div>
                  <div className="relative flex justify-center">
                    <span className="bg-white px-2 text-sm text-gray-500">or</span>
                  </div>
                </div>
                <GoogleButton />
              </div>
            </div>
          </div>
        )}
        
        {/* Contenuto per utenti loggati */}
        {session?.user && <Search />}
      </div>
    </main>
  );
}

export default LoginPage;
