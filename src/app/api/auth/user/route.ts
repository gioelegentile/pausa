import { type NextRequest, NextResponse } from "next/server";
import { db } from "~/server/db";
import {findUniqueUser} from "~/server/auth/user";

export async function GET(req: NextRequest) {
  // Ottieni le informazioni dell'utente dalle intestazioni impostate dal middleware
  const userEmail = req.headers.get("x-user-email");
  const userId = req.headers.get("x-user-id");

  if (!userEmail || !userId) {
    return NextResponse.json(
      { error: "Informazioni utente mancanti" },
      { status: 400 },
    );
  }

  try {
    // L'utente ora dovrebbe già esistere nel DB grazie alla gestione in cloudflare.ts
    const user = await findUniqueUser(userId);

    if (!user) {
      return NextResponse.json(
        { error: "Utente non trovato" },
        { status: 404 },
      );
    }

    return NextResponse.json({ user });
  } catch (error) {
    console.error("Errore nel recupero dell'utente:", error);
    return NextResponse.json({ error: "Errore del server" }, { status: 500 });
  }
}
