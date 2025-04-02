"use client";

import Logo from "./logo";
import { Search } from "./search";
import { type CloudflareSession } from "~/server/auth/cloudflare";
import Image from "next/image";
import { useEffect, useState } from "react";

interface MainPageProps {
  session: CloudflareSession | null;
}

function MainPage({ session }: MainPageProps) {
  const [version, setVersion] = useState<string>("N/A");

  useEffect(() => {
    const fetchVersion = async () => {
      try {
        const response = await fetch("/api/version");
        const data = await response.json();
        setVersion(data.version);
      } catch (error) {
        console.error("Failed to fetch version:", error);
      }
    };

    fetchVersion();
  }, []);

  return (
    <main className="relative h-screen">
      <nav className="flex items-center justify-between p-4">
        <div className="flex items-center">
          <Logo size="small" absolute={false} />
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
                  {session.user.name?.[0]?.toUpperCase() || "U"}
                </div>
              )}
            </div>
          </div>
        )}
      </nav>

      <div className="relative">
        <div className="flex flex-col items-center justify-center gap-4 pt-16">
          <Search />
        </div>
      </div>
      <footer className="absolute bottom-0 left-0 right-0 flex items-center justify-center p-4 text-xs text-gray-500">
        <div>v{version}</div>
      </footer>
    </main>
  );
}

export default MainPage;
