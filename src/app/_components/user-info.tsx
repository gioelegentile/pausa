import { auth } from "~/server/auth/cloudflare";
import Image from "next/image";

export default async function UserInfo() {
  const session = await auth();

  return (
    <div className="flex items-center gap-3 overflow-hidden">
      <span className="hidden text-sm font-medium text-gray-800 dark:text-gray-200 sm:block sm:max-w-[120px] sm:truncate">
        {session.user!.name}
      </span>
      <div className="h-8 w-8 flex-shrink-0 overflow-hidden rounded-full border border-gray-200">
        {session.user!.image ? (
          <Image
            src={session.user!.image}
            alt={`${session.user!.name}'s profile`}
            width={32}
            height={32}
            className="h-full w-full object-cover"
          />
        ) : (
          <div className="flex h-full w-full items-center justify-center bg-gray-100 text-xs text-gray-500">
            {session.user!.name?.[0]?.toUpperCase() ?? "U"}
          </div>
        )}
      </div>
    </div>
  );
}
