import { type NextRequest, NextResponse } from 'next/server';
import { db } from '~/server/db';

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

export async function GET(req: NextRequest) {
  // Ottieni le informazioni dell'utente dalle intestazioni impostate dal middleware
  const userEmail = req.headers.get('x-user-email');
  const userName = req.headers.get('x-user-name');
  const userId = req.headers.get('x-user-id');
  const userImageUrl = req.headers.get('x-user-picture');
  
  if (!userEmail || !userId) {
    return NextResponse.json({ error: 'Informazioni utente mancanti' }, { status: 400 });
  }
  
  try {
    // Verifica se l'utente esiste nel database
    let user = await db.user.findUnique({
      where: { email: userEmail },
    });

    // Elabora l'immagine del profilo se esiste un URL
    let imageBase64 = null;
    if (userImageUrl) {
      imageBase64 = await convertImageToBase64(userImageUrl);
    }

    if (!user) {
      // Crea un nuovo utente se non esiste
      user = await db.user.create({
        data: {
          email: userEmail,
          name: userName ?? '',
          id: userId,
          image: imageBase64 ?? '', // Salva l'immagine come base64
        },
      });
    } else {
      // Aggiorna l'immagine dell'utente esistente se abbiamo ottenuto una nuova immagine base64
      if (imageBase64) {
        user = await db.user.update({
          where: { email: userEmail },
          data: {
            image: imageBase64,
          },
        });
      }
    }
    
    return NextResponse.json({ user });
  } catch (error) {
    console.error('Errore nel recupero/creazione dell\'utente:', error);
    return NextResponse.json({ error: 'Errore del server' }, { status: 500 });
  }
}
