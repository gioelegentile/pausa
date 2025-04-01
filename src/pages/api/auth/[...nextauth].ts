import NextAuth from "next-auth";
import { type NextApiRequest, type NextApiResponse } from "next";
import { verifyCloudflareJWT } from "~/server/utils/cloudflare";
import { authConfig } from "~/server/auth/config";

async function auth(req: NextApiRequest, res: NextApiResponse) {
  // Per il callback personalizzato da Cloudflare
  if (
    req.query.nextauth?.includes("callback") &&
    req.query.nextauth?.includes("cloudflare-google")
  ) {
    const cloudflareToken = req.headers.CF_Authorization as string;

    if (cloudflareToken) {
      try {
        // Verifica il token e ottiene i dati dell'utente
        const userData = await verifyCloudflareJWT(cloudflareToken);

        // Imposta i dati nel cookie per essere elaborati dal provider personalizzato
        res.setHeader(
          "Set-Cookie",
          `cloudflare-user=${JSON.stringify(userData)}; Path=/; HttpOnly; Secure; SameSite=Lax`,
        );
      } catch (error) {
        console.error("Error verifying Cloudflare token:", error);
      }
    }
  }

  return NextAuth(authConfig);
}

export default auth;
