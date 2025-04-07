import { HydrateClient } from "~/trpc/server";

export default async function Votes() {
    return (
        <HydrateClient>
            <div className="flex-1">
                <div className="relative">
                    <div className="flex flex-col items-center justify-center gap-4">
                        <div className="text-gray-800 text-2xl">tabella dei voti</div>
                    </div>
                </div>
            </div>
        </HydrateClient>
    );
}
