import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";
import { verifyCloudflareJWT } from "./server/utils/cloudflare";

export async function middleware(request: NextRequest) {
  // Ottiene il token JWT da Cloudflare (normalmente dal header CF-Access-JWT-Assertion)
  const cloudflareToken = request.headers.get("CF_Authorization");
  
  if (!cloudflareToken) {
    // Reindirizza all'endpoint di login se non c'è token
    return NextResponse.redirect(new URL("/api/auth/signin", request.url));
  }
  
  try {
    // Verifica il token di Cloudflare
    const userData = await verifyCloudflareJWT(cloudflareToken);
    
    // Se il token è valido, procedi con la richiesta e passa i dati dell'utente
    const response = NextResponse.next();
    response.cookies.set("cloudflare-user", JSON.stringify(userData), {
      httpOnly: true,
      // secure: process.env.NODE_ENV === "production"
      secure: true,
    });
    
    return response;
  } catch (error) {
    console.error("JWT verification failed:", error);
    return NextResponse.redirect(new URL("/api/auth/signin", request.url));
  }
}

export const config = {
  matcher: [
    // Proteggi le pagine che richiedono autenticazione
    // Escludi le API di autenticazione
    "/((?!api/auth|_next/static|_next/image|favicon.ico).*)",
  ],
};
