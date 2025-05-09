import fs from 'fs';
import path from 'path';

// Definizione delle interfacce per i dati
interface Movie {
  externalId: number;
  type: string;
  title: string;
  director: string;
  description: string;
  imageUrl: string;
  releaseDate: string;
  genres: string;
  createdAt: string;
  [key: string]: any; // Per gestire le proprietà dinamiche (rating degli utenti)
}

interface Rating {
  workId: number;
  externalId: number;
  userId: string;
  rating: number;
  createdAt: string;
}

/**
 * Converte una data in formato ISO in millisecondi
 */
function dateToMilliseconds(dateStr: string): number {
  return new Date(dateStr).getTime();
}

// Mappa gli indirizzi email agli ID utente
const emailToUserId: Record<string, string> = {
  'gioelegentile.it@gmail.com': 'user1',
  'andonie.thunder@gmail.com': 'user2',
  'nigrogianmarco@gmail.com': 'user3',
  'ilariapetruccini@gmail.com': 'user4',
  'triofollek@gmail.com': 'user5',
  'marco.digirolamo92@gmail.com': 'user6',
  'restanicola92@gmail.com': 'user7',
  'francipavone997@gmail.com': 'user8',
  'vincenzo.vurro@gmail.com': 'user9',
  'Solidorostefano@gmail.com': 'user10',
  'alessio.perro10@gmail.com': 'user13',
  'Francesco.tarallo93@gmail.com': 'user14'
};

// Il percorso del file JSON
const jsonFilePath = '/Users/gioele.gentile/Documents/workspace/pausa-proj/pausa/data/enriched-movies.json';

// Leggi il file JSON
const jsonContent = fs.readFileSync(jsonFilePath, 'utf8');

// Analizza il contenuto JSON
const records: Movie[] = JSON.parse(jsonContent);

// Genera lo script SQL
let sqlScript = `-- Script generato automaticamente da csv-to-sql.ts
-- Data: ${Date.now()}

-- Assicurati che questi utenti esistano nel database
-- Se non esistono, inseriscili
INSERT OR IGNORE INTO User (id, email, name) VALUES 
('user1', 'gioelegentile.it@gmail.com', 'Gioele Gentile'),
('user2', 'andonie.thunder@gmail.com', 'Andonie Thunder'),
('user3', 'nigrogianmarco@gmail.com', 'Gianmarco Nigro'),
('user4', 'ilariapetruccini@gmail.com', 'Ilaria Petruccini'),
('user5', 'triofollek@gmail.com', 'Triofoll EK'),
('user6', 'marco.digirolamo92@gmail.com', 'Marco Di Girolamo'),
('user7', 'restanicola92@gmail.com', 'Nicola Resta'),
('user8', 'francipavone997@gmail.com', 'Franci Pavone'),
('user9', 'vincenzo.vurro@gmail.com', 'Vincenzo Vurro'),
('user10', 'Solidorostefano@gmail.com', 'Stefano Solidoro'),
('user13', 'alessio.perro10@gmail.com', 'Alessio Perro'),
('user14', 'Francesco.tarallo93@gmail.com', 'Francesco Tarallo');

-- Inserisci le opere (Works)
INSERT INTO Work (externalId, type, title, director, description, imageUrl, releaseDate, genres, createdAt)
VALUES\n`;

// Array per memorizzare le istruzioni SQL per i rating
const ratingsSQL: string[] = [];

// Processa ogni record
records.forEach((movie: Movie, index: number) => {
  // Converti le date in millisecondi
  const releaseDateMs = dateToMilliseconds(movie.releaseDate);
  const createdAtMs = dateToMilliseconds(movie.createdAt);
  
  // Aggiungi il film allo script SQL
  sqlScript += `(${movie.externalId}, '${movie.type}', '${movie.title.replace(/'/g, "''")}', '${movie.director.replace(/'/g, "''")}', '${movie.description.replace(/'/g, "''")}', '${movie.imageUrl}', '${releaseDateMs}', '${movie.genres}', '${createdAtMs}')${index < records.length - 1 ? ',' : ';'}\n`;
  
  // Estrai le valutazioni per questo film
  Object.entries(movie).forEach(([key, value]) => {
    // Se la chiave è un'email utente e il valore è un rating valido
    if (emailToUserId[key] && value && typeof value === 'string' && value.trim() !== '') {
      const rating: Rating = {
        workId: movie.externalId,
        externalId: movie.externalId,
        userId: emailToUserId[key],
        rating: parseFloat(value as string),
        createdAt: movie.createdAt
      };

      // Converti la data in millisecondi per il rating
      const ratingCreatedAtMs = createdAtMs;

      // Crea un ID univoco per il rating
      const ratingId = `'wr_${movie.externalId}_${rating.userId}'`;

      // Aggiungi il rating all'array delle valutazioni
      ratingsSQL.push(`
INSERT INTO WorkRating (id, workId, externalId, userId, rating, createdAt, updatedAt)
SELECT 
  ${ratingId},
  w.id,
  w.externalId,
  '${rating.userId}',
  ${rating.rating},
  ${ratingCreatedAtMs},
  ${ratingCreatedAtMs}
FROM Work w
WHERE w.externalId = ${movie.externalId} AND w.type = '${movie.type}';`);
    }
  });
});

// Aggiungi le istruzioni SQL per i rating allo script
sqlScript += `\n\n-- Inserisci i rating (WorkRating)`;
sqlScript += ratingsSQL.join('\n');

// Scrivi lo script SQL in un file
const outputPath = '/Users/gioele.gentile/Documents/workspace/pausa-proj/pausa/data/insert-movies.sql';
fs.writeFileSync(outputPath, sqlScript, 'utf8');

console.log(`Script SQL generato con successo in: ${outputPath}`);