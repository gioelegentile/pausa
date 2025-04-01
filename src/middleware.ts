import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import { jwtVerify, createRemoteJWKSet } from 'jose';

// Il tuo dominio di autenticazione Cloudflare Access
// Lo trovi nel dashboard Zero Trust -> Access -> Applications -> (la tua app) -> Overview -> App Launcher
// Oppure è l'<team-name>.cloudflareaccess.com
const CLOUDFLARE_AUTH_DOMAIN = 'https://gnagno.cloudflareaccess.com';

// L'AUD tag della tua applicazione Access (dalle impostazioni JWT)
const CLOUDFLARE_APP_AUD = process.env.NODE_ENV === 'production' ? 'pausa' : 'pausa-dev';

// URL per ottenere le chiavi pubbliche di Cloudflare per la validazione
const JWKS_URL = `${CLOUDFLARE_AUTH_DOMAIN}/cdn-cgi/access/certs`;

// Crea un JWKSet remoto (jose gestirà il caching delle chiavi)
const JWKSet = createRemoteJWKSet(new URL(JWKS_URL));

export async function middleware(request: NextRequest) {
  // 1. Estrai il token JWT dall'header
  const cfJwt = request.headers.get('CF_Authorization');

  if (!cfJwt) {
    // Se non c'è il token, significa che Cloudflare non ha autenticato l'utente
    // Teoricamente Cloudflare dovrebbe bloccare la richiesta prima che arrivi qui.
    // Potresti restituire un errore 401/403 o redirigere a una pagina di errore generica.
    // Nota: Cloudflare Access potrebbe non inviare il JWT per tutte le risorse (es. assets statici),
    // quindi potresti voler limitare questa logica a specifici path se necessario.
    console.error('Missing CF_Authorization header');
    // In un vero scenario protetto da Access, questo non dovrebbe accadere per le pagine protette.
    // Potrebbe essere utile per lo sviluppo locale senza Cloudflare davanti.
    return new NextResponse('Authentication required', { status: 401 });
    //return NextResponse.next(); // Prosegui se non è strettamente necessario bloccare qui
  }

  try {
    // 2. Valida il JWT
    const { payload } = await jwtVerify(cfJwt, JWKSet, {
      // Specifica l'audience attesa (deve corrispondere all'AUD tag)
      audience: CLOUDFLARE_APP_AUD,
      // Specifica l'issuer atteso (il tuo dominio Cloudflare Access)
      issuer: CLOUDFLARE_AUTH_DOMAIN,
    });

    // 3. Estrai i dati utente (claims) dal payload del JWT
    const userData = {
      email: payload.email as string,
      id: payload.sub as string, // 'sub' è solitamente l'identificativo univoco (spesso l'email)
      // Aggiungi altri campi che ti aspetti dal tuo IdP, es:
      name: payload.name as string,
      // groups: payload.groups as string[],
    };

    // 4. (Opzionale ma consigliato) Passa i dati utente alle pagine/route successive
    // Puoi aggiungere header personalizzati alla richiesta inoltrata
    const requestHeaders = new Headers(request.headers);
    requestHeaders.set('X-User-Data', JSON.stringify(userData)); // Passa come JSON stringato

    // Inoltra la richiesta con i nuovi header
    return NextResponse.next({
      request: {
        headers: requestHeaders,
      },
    });

  } catch (error) {
    console.error('JWT Validation Failed:', error);
    // Il token non è valido (scaduto, firma errata, audience/issuer non corrispondenti)
    // Restituisci un errore 403 (Forbidden)
    return new NextResponse('Invalid authentication token', { status: 403 });
  }
}

// Configura il matcher per specificare su quali path eseguire il middleware
// Esempio: esegui su tutte le rotte tranne quelle statiche e API interne di Next.js
export const config = {
  matcher: [
    /*
     * Match all request paths except for the ones starting with:
     * - api (API routes) -> Potresti volerlo includere se le API richiedono auth
     * - _next/static (static files)
     * - _next/image (image optimization files)
     * - favicon.ico (favicon file)
     */
    '/((?!api|_next/static|_next/image|favicon.ico).*)',
  ],
};