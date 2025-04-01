import * as jose from 'jose';
import { NextResponse } from 'next/server';
import { type NextRequest } from 'next/server';
import { db } from './server/db';

// The Application Audience (AUD) tag for your application
const AUD = process.env.POLICY_AUD;

// Your CF Access team domain
const TEAM_DOMAIN = process.env.TEAM_DOMAIN;
const CERTS_URL = `${TEAM_DOMAIN}/cdn-cgi/access/certs`;

const JWKS = jose.createRemoteJWKSet(new URL(CERTS_URL));

export async function middleware(req: NextRequest) {
  // Permetti accesso alle risorse statiche
  if (req.nextUrl.pathname.startsWith('/_next') || 
      req.nextUrl.pathname.startsWith('/public')) {
    return NextResponse.next();
  }

  // Estrai il token JWT dal header
  const token = req.headers.get("cf-access-jwt-assertion");

  // Se il token è assente, restituisci un errore di autenticazione
  if (!token) {
    return NextResponse.json(
      { error: "Autenticazione richiesta" },
      { status: 401 }
    );
  }

  try {
    // Verifica il token JWT
    const result = await jose.jwtVerify(token, JWKS, {
      issuer: TEAM_DOMAIN,
      audience: AUD,
    });

    console.log('Token verificato:', result);

    // Estrai i dati dell'utente dal payload
    const userEmail = result.payload.email as string;
    const userName = result.payload.name as string;
    const userIdentity = result.payload.sub!;

    console.log('Dati utente:', userEmail, userName, userIdentity);

    // Verifica se l'utente esiste nel database o crealo
    const user = await ensureUserExists(userEmail, userName, userIdentity);

    console.log('Utente:', user);

    // Aggiungi informazioni utente alla richiesta che saranno disponibili per l'applicazione
    const requestHeaders = new Headers(req.headers);
    requestHeaders.set('x-user-id', user.id);
    requestHeaders.set('x-user-email', userEmail);
    requestHeaders.set('x-user-name', userName || '');

    console.log('Richiesta:', requestHeaders);

    // Continua con la richiesta
    return NextResponse.next({
      request: {
        headers: requestHeaders,
      },
    });
  } catch (error) {
    console.error('Errore nella verifica del token:', error);
    return NextResponse.json(
      { error: "Token di autenticazione non valido" },
      { status: 401 }
    );
  }
}

// Questa funzione garantisce che l'utente esista nel database
async function ensureUserExists(email: string, name: string, identity: string) {
  let user = await db.user.findUnique({
    where: { email },
  });

  console.log('Utente esistente:', user);

  if (!user) {
    // Crea un nuovo utente se non esiste
    user = await db.user.create({
      data: {
        email,
        name,
        id: identity,
        // Salva l'ID di Cloudflare come informazione aggiuntiva se necessario
        // cfIdentity: identity,
      },
    });

    console.log('Nuovo utente:', user);
  }

  return user;
}

// Configura il middleware per essere eseguito su tutte le route eccetto quelle specificate
export const config = {
  matcher: ['/((?!api/health|_next/static|_next/image|favicon.ico).*)'],
};

