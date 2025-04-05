import { headers } from 'next/headers';
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

// Funzione per convertire un'immagine da URL a base64
async function convertImageToBase64(imageUrl: string): Promise<string | null> {
  try {
    // Fetch dell'immagine dall'URL
    const response = await fetch(imageUrl);
    
    if (!response.ok) {
      console.error('Errore nel download dell\'immagine:', response.statusText);
      return null;
    }
    
    // Converti l'immagine in ArrayBuffer
    const arrayBuffer = await response.arrayBuffer();
    
    // Converti l'ArrayBuffer in Buffer
    const buffer = Buffer.from(arrayBuffer);
    
    // Converti il Buffer in stringa base64
    const base64String = `data:${response.headers.get('content-type') ?? 'image/jpeg'};base64,${buffer.toString('base64')}`;
    
    return base64String;
  } catch (error) {
    console.error('Errore nella conversione dell\'immagine in base64:', error);
    return null;
  }
}

// Funzione per ottenere la sessione utente dalle intestazioni HTTP
export const getSession = cache(async (): Promise<CloudflareSession> => {
  const headersList = await headers();
  
  const userId = headersList.get('x-user-id');
  const userEmail = headersList.get('x-user-email');
  const userName = headersList.get('x-user-name');
  const userPicture = headersList.get('x-user-picture');
  
  if (!userId || !userEmail) {
    return { user: null };
  }
  
  // Cerca l'utente nel database per ottenere altre informazioni se necessario
  let user = await db.user.findUnique({
    where: { id: userId },
  });
  
  // Se l'utente non esiste, crealo immediatamente
  if (!user) {
    // Elabora l'immagine del profilo se esiste un URL
    let imageBase64 = null;
    if (userPicture) {
      imageBase64 = await convertImageToBase64(userPicture);
    }
    
    // Crea un nuovo utente
    user = await db.user.create({
      data: {
        id: userId,
        email: userEmail,
        name: userName ?? '',
        image: imageBase64 ?? '',
      },
    });
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

export const auth = cache(async () => {
  return getSession();
});
