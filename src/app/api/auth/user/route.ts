import { NextRequest, NextResponse } from 'next/server';
import { db } from '~/server/db';


export async function GET(req: NextRequest) {
  // Ottieni le informazioni dell'utente dalle intestazioni impostate dal middleware
  const userEmail = req.headers.get('x-user-email');
  const userName = req.headers.get('x-user-name');
  const userId = req.headers.get('x-user-id');
  
  if (!userEmail || !userId) {
    return NextResponse.json({ error: 'Informazioni utente mancanti' }, { status: 400 });
  }
  
  try {
    // Verifica se l'utente esiste nel database
    let user = await db.user.findUnique({
      where: { email: userEmail },
    });

    if (!user) {
      // Crea un nuovo utente se non esiste
      user = await db.user.create({
        data: {
          email: userEmail,
          name: userName ?? '',
          id: userId,
        },
      });
    }
    
    return NextResponse.json({ user });
  } catch (error) {
    console.error('Errore nel recupero/creazione dell\'utente:', error);
    return NextResponse.json({ error: 'Errore del server' }, { status: 500 });
  }
}
