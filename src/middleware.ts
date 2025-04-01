import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import { jwtVerify, createRemoteJWKSet } from 'jose';
import type { AdapterUser } from '@auth/core/adapters';
import {adapter} from "~/server/auth/config"; // Tipo utile

// --- Configurazione Cloudflare (come prima) ---
const CLOUDFLARE_AUTH_DOMAIN = 'https://gnagno.cloudflareaccess.com';
const CLOUDFLARE_APP_AUD = 'pausa';
const JWKS_URL = `${CLOUDFLARE_AUTH_DOMAIN}/cdn-cgi/access/certs`;
const JWKSet = createRemoteJWKSet(new URL(JWKS_URL));


export async function middleware(request: NextRequest) {
  const cfJwt = request.headers.get('CF_Authorization');

  if (!cfJwt) {
    console.error('Missing CF_Authorization header');
    return new NextResponse('Authentication required', { status: 401 });
  }

  try {
    // 1. Valida JWT Cloudflare
    const { payload } = await jwtVerify(cfJwt, JWKSet, {
      audience: CLOUDFLARE_APP_AUD,
      issuer: CLOUDFLARE_AUTH_DOMAIN,
    });

    // 2. Estrai dati utente dal JWT
    const email = payload.email as string;
    const name = payload.name as string | undefined; // Il nome potrebbe non essere sempre presente
    // Aggiungi altri campi se necessario/disponibili (es. payload.groups)

    if (!email) {
      console.error('JWT is valid but missing email claim');
      return new NextResponse('Authentication data incomplete', { status: 403 });
    }

    // 3. Usa l'Adapter per trovare o creare l'utente nel DB
    let userInDb: AdapterUser | null = null;

    // Verifica se l'adapter è stato inizializzato correttamente (necessario per alcuni adapter)
    if (adapter.getUserByEmail) {
      userInDb = await adapter.getUserByEmail(email);
    } else {
      console.error("PrismaAdapter not correctly initialized or doesn't support getUserByEmail");
      // Gestisci l'errore - forse l'adapter richiede un setup asincrono? Consulta la doc specifica.
      return new NextResponse('Internal Server Error: Adapter initialization failed', { status: 500 });
    }


    if (!userInDb && adapter.createUser) {
      // Utente non trovato, crealo
      console.log(`Creating user for email: ${email}`);
      // Nota: AdapterUser richiede emailVerified come Date o null
      const newUserPayload: Omit<AdapterUser, 'id'> = {
        email: email,
        name: name,
        emailVerified: new Date(), // Assumiamo verificato da Cloudflare/IdP
        // Aggiungi altri campi se il tuo schema User li ha e sono nel JWT
      };
      userInDb = await adapter.createUser(newUserPayload as AdapterUser);
      console.log(`User created with ID: ${userInDb.id}`);
    } else if (userInDb && adapter.updateUser) {
      // Utente trovato, potresti aggiornarlo se necessario (es. nome cambiato)
      // Questo è opzionale, potresti voler aggiornare solo il lastLogin o nulla
      console.log(`User found with ID: ${userInDb.id}. Checking for updates...`);
      if (name && userInDb.name !== name) {
        console.log(`Updating user name for ID: ${userInDb.id}`);
        userInDb = await adapter.updateUser({ id: userInDb.id, name: name });
      }
    } else if (!userInDb && !adapter.createUser) {
      console.error("Adapter cannot create user.");
      return new NextResponse('Internal Server Error: Adapter configuration issue', { status: 500 });
    }
    // A questo punto, userInDb dovrebbe contenere i dati utente dal DB

    if (!userInDb) {
      // Se ancora non abbiamo userInDb, qualcosa è andato storto
      console.error(`Failed to find or create user for email: ${email}`);
      return new NextResponse('Failed to process user information', { status: 500 });
    }

    // 4. Prepara i dati da passare avanti
    const finalUserData = {
      id: userInDb.id, // ID dal database!
      email: userInDb.email,
      name: userInDb.name,
      // Aggiungi altri campi dal record del DB se necessario
    };

    // 5. Passa i dati utente del DB tramite header
    const requestHeaders = new Headers(request.headers);
    requestHeaders.set('X-User-Data', JSON.stringify(finalUserData));

    return NextResponse.next({
      request: {
        headers: requestHeaders,
      },
    });

  } catch (error) {
    console.error('Middleware Error (JWT Validation or DB Interaction):', error);
    // Gestisci l'errore (JWT non valido o problemi DB)
    return new NextResponse('Authentication Error or Internal Issue', { status: 403 }); // O 500 se è un problema DB
  }
}

// Configurazione matcher (come prima)
export const config = {
  matcher: [ '/((?!api|_next/static|_next/image|favicon.ico).*)' ],
};