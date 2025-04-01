import { jwtVerify, createRemoteJWKSet } from "jose";

export interface CloudflareJWT {
  sub: string;
  email: string;
  name: string;
  picture?: string;
  email_verified: boolean;
  // Altri campi che Cloudflare passa dal profilo Google
}

// URL per ottenere le chiavi pubbliche di Cloudflare (esempio, sostituisci con l'URL corretto del tuo team)
const JWKS_URL = "https://gnagno.cloudflareaccess.com/cdn-cgi/access/certs";

// Imposta la validazione della chiave remota
const JWKS = createRemoteJWKSet(new URL(JWKS_URL));

export async function verifyCloudflareJWT(token: string): Promise<CloudflareJWT> {
  try {
    // Verifica il JWT usando le chiavi pubbliche di Cloudflare
    const { payload } = await jwtVerify(token, JWKS, {
      // Opzioni di verifica, per esempio audience e issuer
      audience: process.env.NODE_ENV === "production" ? "pausa" : "pausa-dev", // Solitamente l'ID della tua applicazione in Cloudflare Access
      issuer: "https://gnagno.cloudflareaccess.com",
    });
    
    return payload as unknown as CloudflareJWT;
  } catch (error) {
    console.error("JWT verification error:", error);
    throw new Error("Invalid JWT from Cloudflare");
  }
}
