/* eslint-disable @typescript-eslint/no-unsafe-assignment */
/* eslint-disable @typescript-eslint/no-unsafe-argument */
/* eslint-disable @typescript-eslint/no-unsafe-member-access */
"use client";

import { createContext, useContext, useEffect, useState, type ReactNode } from 'react';

type User = {
  id: string;
  email: string;
  name: string;
  image?: string;
} | null;

type AuthContextType = {
  user: User;
  loading: boolean;
  error: string | null;
};

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const timeoutId = setTimeout(async () => {
      try {
        const response = await fetch('/api/auth/user');
        
        if (!response.ok) {
          const errorData = await response.json();
          throw new Error(errorData.error || 'Errore durante il caricamento dei dati utente');
        }
        
        const data = await response.json();
        setUser(data.user);
      } catch (err) {
        console.error('Errore di autenticazione:', err);
        setError(err instanceof Error ? err.message : 'Errore sconosciuto');
      } finally {
        setLoading(false);
      }
    }, 100);

    return () => clearTimeout(timeoutId);
  }, []);

  return (
    <AuthContext.Provider value={{ user, loading, error }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  
  if (context === undefined) {
    throw new Error('useAuth deve essere utilizzato all\'interno di un AuthProvider');
  }
  
  return context;
}
