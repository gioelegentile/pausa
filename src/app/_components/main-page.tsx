/* eslint-disable @typescript-eslint/no-unsafe-member-access */
/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-argument */
"use client";

import Logo from "./logo";
import { Search } from "./search";
import { type CloudflareSession } from "~/server/auth/cloudflare";
import Image from "next/image";
import { useEffect, useState } from "react";
import { useAuth } from "~/contexts/AuthContext";

interface MainPageProps {
  session: CloudflareSession | null;
}

function MainPage({ session }: MainPageProps) {
  const [version, setVersion] = useState<string>("N/A");
  const { user, loading } = useAuth();

  const userData = user || session?.user || null;

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

    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    fetchVersion();
  }, []);

  return (
    <main className="relative flex min-h-screen flex-col">
      <nav className="flex items-center justify-between p-4">
        <div className="flex items-center">
          <Logo size="small" absolute={false} />
        </div>
        
        {userData && !loading && (
          <div className="flex items-center gap-3">
            <span className="text-sm font-medium">{userData.name}</span>
            <div className="h-8 w-8 overflow-hidden rounded-full border border-gray-200">
              {userData.image ? (
                <Image 
                  src={userData.image} 
                  alt={`${userData.name}'s profile`} 
                  width={32}
                  height={32}
                  className="h-full w-full object-cover"
                />
              ) : (
                <div className="flex h-full w-full items-center justify-center bg-gray-100 text-xs text-gray-500">
                  {userData.name?.[0]?.toUpperCase() ?? "U"}
                </div>
              )}
            </div>
          </div>
        )}
      </nav>

      <div className="flex-1">
        <div className="relative">
          <div className="flex flex-col items-center justify-center gap-4 pt-16">
            <Search />
          </div>
        </div>
      </div>

      <footer className="flex items-center justify-center p-4 text-xs text-gray-500">
        <div>v{version}</div>
      </footer>
    </main>
  );
}

export default MainPage;
