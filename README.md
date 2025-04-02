# Pausa

Pausa è un'applicazione per votare opere audiovisive (film, serie TV, anime) e condividere i voti con una community ristretta di amici. Utilizza i dati di The Movie Database (TMDb) per reperire informazioni sulle opere e mostrare i voti globali, ma permette anche di esprimere voti personalizzati all'interno della sub-community di Pausa.

## Funzionalità principali

- **Votazione di film, serie TV e anime**: puoi votare qualsiasi opera e vedere i voti di TMDb e quelli degli altri utenti di Pausa.
- **Condivisione con la community**: confronta i voti con quelli dei tuoi amici e scopri nuove opere consigliate.
- **Classifiche personalizzate**: esplora le opere più votate dalla tua cerchia di amici.
- **Autenticazione sicura**: l'accesso è gestito tramite Cloudflare.

## Stack Tecnologico

L'applicazione utilizza la **T3 Stack**, che include:
- [**Next.js**](https://nextjs.org)
- [**Prisma**](https://prisma.io)
- [**SQLite**](https://www.sqlite.org/)
- [**Tailwind CSS**](https://tailwindcss.com)
- [**tRPC**](https://trpc.io)
- [**Cloudflare**](https://www.cloudflare.com/)


## Hosting e Deploy

Pausa è ospitata su un **Raspberry Pi** con **Minikube** per la gestione del cluster Kubernetes.

### Processo di deploy
- Ad ogni commit su `main` e `develop`, una **GitHub Action** esegue la build dell'immagine Docker.
- Le immagini vengono pubblicate su **GitHub Container Registry (GHCR)**.
- Un webhook notifica il server per aggiornare il cluster Kubernetes con la nuova versione.

## Installazione locale

Se vuoi eseguire Pausa in locale:

1. Clona il repository:
   ```sh
   git clone https://github.com/gioelegentile/pausa.git
   cd pausa
   ```

2. Installa le dipendenze:
   ```sh
   npm install
   ```

3. Avvia il server di sviluppo:
   ```sh
   npm run dev
   ```

L'app sarà disponibile su `http://localhost:3000`.

## Contributi

Se vuoi contribuire al progetto, sentiti libero di aprire una **Issue** o un **Pull Request** su GitHub!

---

### Contatti

Per domande o suggerimenti, contattami su GitHub!

---

> Questo progetto è nato per condividere consigli tra amici. Se anche tu vuoi entrare nella community, unisciti a noi su Pausa! 🎬🍿

