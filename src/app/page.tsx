// page.tsx (Server Component)
import { HydrateClient } from "~/trpc/server";
import { auth } from "~/server/auth/cloudflare"; // Cambiato l'import
import MainPage from "./_components/main-page";

export default async function Home() {
  const session = await auth();

  return (
    <HydrateClient>
      <MainPage session={session} />
    </HydrateClient>
  );
}
