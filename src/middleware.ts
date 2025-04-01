import * as jose from 'jose';
import { NextResponse } from 'next/server';
import { type NextRequest } from 'next/server';
import { env } from './env';

export async function middleware(req: NextRequest) {

  // The Application Audience (AUD) tag for your application
  const AUD = env.POLICY_AUD;
  // Your CF Access team domain
  const TEAM_DOMAIN = env.TEAM_DOMAIN;
  const CERTS_URL = `${TEAM_DOMAIN}/cdn-cgi/access/certs`;

  const JWKS = jose.createRemoteJWKSet(new URL(CERTS_URL));

  // log env
  console.log('ENV:', {
    AUD,
    TEAM_DOMAIN,
    CERTS_URL,
  });
  console.log('Request URL:', req.url);
  console.log('Request Headers:', req.headers);
  console.log('Request Method:', req.method);
  console.log('Request Pathname:', req.nextUrl.pathname);
  console.log('Request Query:', req.nextUrl.searchParams);
  console.log('Request Body:', req.body);

  // Permetti accesso alle risorse statiche
  if (req.nextUrl.pathname.startsWith('/_next') || 
      req.nextUrl.pathname.startsWith('/public')) {
    console.log('Accesso a risorse statiche consentito');
    return NextResponse.next();
  }

  // Estrai il token JWT dal header
  const token = req.headers.get("cf-access-jwt-assertion");

  console.log('Token JWT:', token);

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

    // Aggiungi informazioni utente alla richiesta che saranno disponibili per l'applicazione
    const requestHeaders = new Headers(req.headers);
    requestHeaders.set('x-user-email', userEmail);
    requestHeaders.set('x-user-id', userIdentity);
    requestHeaders.set('x-user-name', userName || '');

    console.log('Richiesta con credenziali:', requestHeaders);

    // Continua con la richiesta
    return NextResponse.next({
      request: {
        headers: requestHeaders,
      },
    });
  } catch (error) {
    console.error('Errore nella verifica del token:', error);

    // Log dettagliato dell'errore per diagnostica
    if (error instanceof Error) {
      console.error('Tipo di errore:', error.name);
      console.error('Messaggio errore:', error.message);
      console.error('Stack trace:', error.stack);
    }
    
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

