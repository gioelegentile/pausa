import { cookies, headers } from 'next/headers';
import { cache } from 'react';
import { db } from '../db';

export interface CloudflareSession {
  user: {
    id: string;
    name: string | null;
    email: string | null;
    image?: string | null;
  } | null;
}

// Funzione per ottenere la sessione utente dalle intestazioni HTTP
export const getSession = cache(async (): Promise<CloudflareSession> => {
  const headersList = await headers();
  
  const userId = headersList.get('x-user-id');
  const userEmail = headersList.get('x-user-email');
  const userName = headersList.get('x-user-name');
  
  if (!userId || !userEmail) {
    return { user: null };
  }
  
  // Cerca l'utente nel database per ottenere altre informazioni se necessario
  const user = await db.user.findUnique({
    where: { id: userId },
  });
  
  if (!user) {
    return { user: null };
  }
  
  return {
    user: {
      id: user.id,
      name: user.name,
      email: user.email,
      image: user.image,
    },
  };
});

// Hook per ottenere la sessione corrente (cache-first)
export const auth = cache(async () => {
  return getSession();
});
