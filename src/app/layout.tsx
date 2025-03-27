import "~/styles/globals.css";

import { GeistSans } from "geist/font/sans";
import { type Metadata } from "next";
import Logo from "./_components/logo";

import { TRPCReactProvider } from "~/trpc/react";
import { auth } from "~/server/auth";
import { SessionProvider } from "~/app/_components/session-provider";

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
    <html lang="it" className={`${GeistSans.variable}`}>
      <body>
        <TRPCReactProvider>
          <SessionProvider session={session}>
            {children}
          </SessionProvider>
        </TRPCReactProvider>
      </body>
    </html>
  );
}
