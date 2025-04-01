// app/api/auth/sync-user/route.ts
import { NextRequest, NextResponse } from 'next/server';
import { headers } from 'next/headers';
// import { db } from '@/lib/db'; // Il tuo client DB (es. Prisma)

export async function POST(request: NextRequest) {
    const headersList = headers();
    const userDataHeader = await headersList.get('X-User-Data'); // Inserito dal middleware

    if (!userDataHeader) {
        return NextResponse.json({ message: 'User data not found' }, { status: 400 });
    }

    try {
        const user = JSON.parse(userDataHeader);

        // Esempio con Prisma (ipotetico)
        
        const dbUser = await db.user.upsert({
            where: { email: user.email },
            update: {
                name: user.name, // Aggiorna i campi se necessario
                lastLogin: new Date(),
            },
            create: {
                id: user.id, // Potresti voler usare l'ID dal JWT o generarne uno tuo
                email: user.email,
                name: user.name,
            },
        });

        // Sostituisci con la logica del tuo database
        console.log('User synced/found in DB (simulated):', user);
        const dbUser = { ...user, dbId: 'user_' + Math.random().toString(16).slice(2) }; // Simula un record DB

        return NextResponse.json({ message: 'User synced successfully', user: dbUser });

    } catch (error) {
        console.error('Failed to sync user:', error);
        return NextResponse.json({ message: 'Failed to sync user' }, { status: 500 });
    }
}