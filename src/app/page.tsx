// page.tsx (Server Component)
import { HydrateClient } from "~/trpc/server";
import LoginPage from "./_components/Login_page";
import {Search} from "~/app/_components/search";

export default async function Home() {
  return (
    <HydrateClient>
        <Search />
    </HydrateClient>
  );
}
