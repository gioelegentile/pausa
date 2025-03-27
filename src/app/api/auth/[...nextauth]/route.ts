import { handlers } from "~/server/auth";

async function withErrorHandling(request: Request) {
  try {
    return await handlers.GET(request);
  } catch (error) {
    console.error("Errore nella gestione dell'autenticazione GET:", error);
    return new Response(JSON.stringify({ error: "Errore di autenticazione" }), { 
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}

async function handlePost(request: Request) {
  try {
    return await handlers.POST(request);
  } catch (error) {
    console.error("Errore nella gestione dell'autenticazione POST:", error);
    return new Response(JSON.stringify({ error: "Errore di autenticazione" }), { 
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}

export const GET = withErrorHandling;
export const POST = handlePost;
