import Link from "next/link";

export default function Logo() {
  return (
    <div className="absolute top-0 left-0 z-10 p-0 m-0">
      <Link href="/"> 
        <img src="/Pausa.png" alt="Logo" className="w-32 h-auto" />
      </Link>
    </div>
  );
}