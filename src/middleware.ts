import * as jose from 'jose';
import { NextResponse } from 'next/server';
import { type NextRequest } from 'next/server';
import { env } from './env';

function testUser(req: NextRequest) {
  const requestHeaders = new Headers(req.headers);
  requestHeaders.set('x-user-email', 'test@gmail.com');
  requestHeaders.set('x-user-id', 'test-user');
  requestHeaders.set('x-user-name', 'test user');

  return NextResponse.next({
    request: {
      headers: requestHeaders,
    },
  });
}

export async function middleware(req: NextRequest) {

  if (env.NODE_ENV === 'development') {
    // In development mode, allow access to all routes without authentication
    return testUser(req);
  }
  
  // In production mode, require authentication for all routes except the ones specified in the matcher

  // The Application Audience (AUD) tag for your application
  const AUD = env.POLICY_AUD;
  // Your CF Access team domain
  const TEAM_DOMAIN = env.TEAM_DOMAIN;
  const CERTS_URL = `${TEAM_DOMAIN}/cdn-cgi/access/certs`;

  const JWKS = jose.createRemoteJWKSet(new URL(CERTS_URL));

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

    // Estrai i dati dell'utente dal payload
    const userEmail = result.payload.email as string;
    const customPayload = result.payload.custom as { name?: string, picture?: string } | undefined;
    const userName = customPayload?.name || '';
    const userPicture = customPayload?.picture || '';
    const userIdentity = result.payload.sub!;

    // Aggiungi informazioni utente alla richiesta che saranno disponibili per l'applicazione
    const requestHeaders = new Headers(req.headers);
    requestHeaders.set('x-user-email', userEmail);
    requestHeaders.set('x-user-id', userIdentity);
    requestHeaders.set('x-user-name', userName || '');
    requestHeaders.set('x-user-picture', userPicture || '');

    // Continua con la richiesta
    return NextResponse.next({
      request: {
        headers: requestHeaders,
      },
    });
  } catch (error) {    
    console.error("Errore durante la verifica del token JWT:", error);
    return NextResponse.json(
      { error: "Token di autenticazione non valido" },
      { status: 401 }
    );
  }
}

// Configura il middleware per essere eseguito su tutte le route eccetto quelle specificate
export const config = {
  matcher: ['/((?!api/health|_next/static|_next/image|favicon.ico).*)'],
};

