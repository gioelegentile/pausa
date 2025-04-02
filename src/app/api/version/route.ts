import { NextResponse } from 'next/server';
import { env } from '~/env';

export async function GET() {
  const version = env.APP_VERSION || 'N/A';
  return NextResponse.json({ version });
}
