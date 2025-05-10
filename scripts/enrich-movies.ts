import fs from 'fs';
import path from 'path';
import { parse } from 'csv-parse/sync';
import axios from 'axios';
import dotenv from 'dotenv';

dotenv.config();

// Interfacce
interface Movie {
  id: number;
  title: string;
  overview: string;
  release_date: string;
  poster_path?: string;
  vote_average: number;
  genre_ids: number[];
  popularity: number;
}

interface TmdbResponse {
  results: Movie[];
}

interface Genre {
  id: number;
  name: string;
}

interface GenresResponse {
  genres: Genre[];
}

interface CreditsResponse {
  crew: {
    job: string;
    name: string;
  }[];
}

interface EnrichedMovie {
  externalId: number;
  type: string;
  title: string;
  director: string;
  description: string;
  imageUrl?: string;
  releaseDate: string;
  genres: string;
  createdAt: string; // Per il campo createdAt necessario per Prisma
  [key: string]: string | number | undefined;
}

// Funzione principale
async function main() {
  try {
    console.log('Inizializzazione script di arricchimento film...');
    
    // Leggi il file CSV
    const csvFilePath = path.resolve('./data/Film.csv');
    const fileContent = fs.readFileSync(csvFilePath, { encoding: 'utf-8' });
    
    const records = parse(fileContent, {
      columns: true,
      skip_empty_lines: true,
    });
    
    console.log(`Trovati ${records.length} film nel CSV`);
    console.log(records)
    
    // Ottieni tutti i generi una volta sola
    const genres = await fetchAllGenres();

    console.log(`Trovati ${genres.length} generi`);
    
    // Elabora ogni film
    const enrichedMovies: EnrichedMovie[] = [];

    for (const record of records) {
      const movieTitle = record.TITOLO; // La prima colonna è il titolo
      console.log(`Elaborazione di "${movieTitle}"...`);

      try {
        // Cerca il film tramite API
        const searchResults = await searchMovie(movieTitle!);

        if (searchResults.length === 0) {
          console.warn(`Nessun risultato trovato per "${movieTitle}"`);
          continue;
        }

        // Prendi il film con il voto più alto
        const bestMatch = searchResults.sort((a, b) => b.popularity - a.popularity)[0];

        if (bestMatch) {
        // Ottieni il regista
        const director = await fetchDirector(bestMatch.id);

        // Mappa gli ID dei generi ai nomi
        const genreNames = bestMatch.genre_ids
          .map(id => {
            const genre = genres.find(g => g.id === id);
            return genre ? genre.name : null;
          })
          .filter((name): name is string => name !== null)
          .join(',');

        // Crea l'oggetto arricchito
        const enrichedMovie: EnrichedMovie = {
          externalId: bestMatch.id,
          type: 'movie',
          title: bestMatch.title,
          director: director,
          description: bestMatch.overview,
          imageUrl: bestMatch.poster_path,
          releaseDate: bestMatch.release_date,
          genres: genreNames,
          createdAt: new Date().toISOString(),
          ...record,
        };

        enrichedMovies.push(enrichedMovie);
        console.log(`Elaborato: ${enrichedMovie.title} (${enrichedMovie.externalId})`);

        // Attendi un po' per non sovraccaricare l'API
        await sleep(400);
    }
      } catch (error) {
        console.error(`Errore nell'elaborazione di "${movieTitle}":`, error);
      }
    }

    // Salva i risultati in un nuovo file JSON
    const outputPath = path.resolve('./data/enriched-movies.json');
    fs.writeFileSync(outputPath, JSON.stringify(enrichedMovies, null, 2), 'utf-8');

    // Crea anche un file CSV per l'importazione
    const csvOutputPath = path.resolve('./data/enriched-movies.csv');
    const csvContent = convertToCSV(enrichedMovies);
    fs.writeFileSync(csvOutputPath, csvContent, 'utf-8');
    
    console.log(`Elaborazione completata. Risultati salvati in ${outputPath} e ${csvOutputPath}`);
  } catch (error) {
    console.error('Errore durante l\'esecuzione dello script:', error);
  }
}

// Funzioni ausiliarie
async function searchMovie(title: string): Promise<Movie[]> {
  const url = 'https://api.themoviedb.org/3/search/movie';
  const params = {
    api_key: process.env.TMDB_API_KEY,
    language: 'it-IT',
    query: encodeURIComponent(title),
  };
  
  const response = await axios.get<TmdbResponse>(url, { params });
  return response.data.results;
}

async function fetchAllGenres(): Promise<Genre[]> {
  const url = `https://api.themoviedb.org/3/genre/movie/list`;
  const params = {
    api_key: process.env.TMDB_API_KEY,
    language: 'it-IT',
  };
  
  const response = await axios.get<GenresResponse>(url, { params });
  return response.data.genres;
}

async function fetchDirector(movieId: number): Promise<string> {
  const url = `https://api.themoviedb.org/3/movie/${movieId}/credits`;
  const params = {
    api_key: process.env.TMDB_API_KEY,
    language: 'it-IT',
  };
  
  const response = await axios.get<CreditsResponse>(url, { params });
  const director = response.data.crew.find(c => c.job === 'Director');
  return director?.name || '';
}

function convertToCSV(data: EnrichedMovie[]): string {
  // Intestazioni
  const headers = Object.keys(data[0]!).join(',');
  
  // Righe
  const rows = data.map(movie => {
    return Object.values(movie)
      .map(value => {
        // Gestisci valori speciali come stringhe vuote o contenenti virgole
        if (value === undefined || value === null) return '';
        const str = String(value);
        return str.includes(',') ? `"${str}"` : str;
      })
      .join(',');
  });
  
  return [headers, ...rows].join('\n');
}

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}

// Esegui lo script
main().catch(console.error);