import "~/styles/globals.css";

import { GeistSans } from "geist/font/sans";
import { type Metadata } from "next";

import { TRPCReactProvider } from "~/trpc/react";
import { AuthProvider } from "~/contexts/AuthContext";
import Logo from "./_components/logo";
import Link from "next/link";
import { env } from "~/env";
import UserInfo from "~/app/_components/user-info";

export const metadata: Metadata = {
  title: "Pausa - Scopri e vota film, serie TV e anime",
  description:
    "Esplora, vota e commenta i tuoi film, serie TV e anime preferiti.",
  icons: [{ rel: "icon", url: "/favicon.ico" }],
};

export default async function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <TRPCReactProvider>
      <AuthProvider>
        <html lang="it" className={`${GeistSans.variable}`}>
          <body className="relative flex min-h-screen flex-col">
            <header>
              <nav className="flex items-center justify-between p-4">
                <div className="flex items-center">
                  <Logo />
                  <div className="ml-2 text-lg font-bold text-gray-800">
                    <Link href="/" className="ml-4 lg:ml-8">
                      <span className="text-gray-800">Cerca</span>
                    </Link>
                    <Link href="/votes/movie" className="ml-4">
                      <span className="text-gray-800">Voti</span>
                    </Link>
                  </div>
                </div>

                <UserInfo />
              </nav>
            </header>

            <main className="flex-grow">{children}</main>

            <footer className="mt-auto flex items-center justify-center p-4 text-xs text-gray-500">
              <div>v{env.APP_VERSION || "N/A"}</div>
            </footer>
          </body>
        </html>
      </AuthProvider>
    </TRPCReactProvider>
  );
}
