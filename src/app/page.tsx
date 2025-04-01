// page.tsx (Server Component)
import { HydrateClient } from "~/trpc/server";
import { auth } from "~/server/auth";
import LoginPage from "./_components/Login_page";

export default async function Home() {
  const session = await auth();

  return (
    <HydrateClient>
      <LoginPage session={session} />
    </HydrateClient>
  );
}
