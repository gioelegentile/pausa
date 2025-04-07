/* eslint-disable @typescript-eslint/no-unsafe-member-access */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-argument */
import "~/styles/globals.css";

import { GeistSans } from "geist/font/sans";
import { type Metadata } from "next";

import { TRPCReactProvider } from "~/trpc/react";
import { AuthProvider } from '~/contexts/AuthContext';
import Logo from "./_components/logo";
import Link from "next/link";
import { auth } from "~/server/auth/cloudflare";
import Image from "next/image";
import { env } from "~/env";

export const metadata: Metadata = {
  title: "Pausa - Scopri e vota film, serie TV e anime",
  description: "Esplora, vota e commenta i tuoi film, serie TV e anime preferiti.",
  icons: [{ rel: "icon", url: "/favicon.ico" }],
};

export default async function RootLayout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  const session = await auth();

  return (
    <TRPCReactProvider>
      <AuthProvider>
        <html lang="it" className={`${GeistSans.variable}`}>
          <body className="relative flex min-h-screen flex-col">

            <header>
              <nav className="flex items-center justify-between p-4">
                <div className="flex items-center">
                  <Logo size="small" absolute={false} />
                  <div className="ml-2 text-lg font-bold text-gray-800">
                    <Link href="/" className="lg:ml-8 ml-4">
                      <span className="text-gray-800">Cerca</span>
                    </Link>
                    <Link href="/votes" className="ml-4">
                      <span className="text-gray-800">Voti</span>
                    </Link>
                  </div>
                </div>

                {session?.user && (
                  <div className="flex items-center gap-3">
                    <span className="text-sm font-medium">{session.user.name}</span>
                    <div className="h-8 w-8 overflow-hidden rounded-full border border-gray-200">
                      {session.user.image ? (
                        <Image
                          src={session.user.image}
                          alt={`${session.user.name}'s profile`}
                          width={32}
                          height={32}
                          className="h-full w-full object-cover"
                        />
                      ) : (
                        <div className="flex h-full w-full items-center justify-center bg-gray-100 text-xs text-gray-500">
                          {session.user.name?.[0]?.toUpperCase() ?? "U"}
                        </div>
                      )}
                    </div>
                  </div>
                )}
              </nav>
            </header>

            <main className="flex-grow">
              {children}
            </main>

            <footer className="flex items-center justify-center p-4 text-xs text-gray-500 mt-auto">
              <div>v{env.APP_VERSION || 'N/A'}</div>
            </footer>

          </body>
        </html>
      </AuthProvider>
    </TRPCReactProvider>
  );
}
