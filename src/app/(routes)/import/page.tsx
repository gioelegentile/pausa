"use client";

import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import { useEffect, useState, useRef } from "react";
import { DocumentArrowUpIcon, ArrowPathIcon, CheckCircleIcon, XCircleIcon } from "@heroicons/react/24/outline";

export default function ImportPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const fileInputRef = useRef<HTMLInputElement>(null);
  
  const [isUploading, setIsUploading] = useState(false);
  const [uploadStatus, setUploadStatus] = useState<"idle" | "success" | "error">("idle");
  const [fileName, setFileName] = useState("");
  const [fileType, setFileType] = useState<"excel" | "xml" | "">("");
  const [importedItems, setImportedItems] = useState<Array<{ id: number; title: string; type: string; rating?: number }>>([]);

  // Reindirizza alla home se l'utente non è autenticato
  useEffect(() => {
    if (status === "unauthenticated") {
      router.push("/");
    }
  }, [status, router]);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;
    
    setFileName(file.name);
    
    // Determina il tipo di file in base all'estensione
    if (file.name.endsWith(".xlsx") || file.name.endsWith(".xls")) {
      setFileType("excel");
    } else if (file.name.endsWith(".xml")) {
      setFileType("xml");
    } else {
      setFileType("");
      alert("Per favore, carica un file Excel (.xlsx, .xls) o XML (.xml)");
      return;
    }
  };

  const handleImport = async () => {
    // Simula l'importazione dei dati
    setIsUploading(true);
    
    try {
      // In una vera implementazione, qui ci sarebbe la logica per 
      // analizzare il file e importare i dati nel database
      await new Promise(resolve => setTimeout(resolve, 2000));
      
      // Dati di esempio simulati da un'importazione
      const mockImportedData = [
        { id: 123456, title: "The Shawshank Redemption", type: "movie", rating: 5 },
        { id: 234567, title: "Breaking Bad", type: "tv", rating: 4.5 },
        { id: 345678, title: "Inception", type: "movie", rating: 4 },
        { id: 456789, title: "Steins;Gate", type: "anime", rating: 5 },
        { id: 567890, title: "The Witcher", type: "tv" },
      ];
      
      setImportedItems(mockImportedData);
      setUploadStatus("success");
    } catch (error) {
      console.error("Errore durante l'importazione:", error);
      setUploadStatus("error");
    } finally {
      setIsUploading(false);
    }
  };

  const resetForm = () => {
    setFileName("");
    setFileType("");
    setUploadStatus("idle");
    setImportedItems([]);
    if (fileInputRef.current) {
      fileInputRef.current.value = "";
    }
  };

  if (status === "loading") {
    return (
      <div className="flex h-screen items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-indigo-500"></div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-8 text-gray-900">Importa la tua libreria</h1>
      
      <div className="bg-white shadow-md rounded-lg p-6 mb-8">
        <h2 className="text-xl font-semibold mb-6 text-gray-800">Carica un file</h2>
        
        <div className="mb-6">
          <p className="text-gray-600 mb-4">
            Importa le tue collezioni di film, serie TV e anime da file esterni.
            Supportiamo l'importazione da file Excel (.xlsx, .xls) e XML (.xml).
          </p>
          
          {/* Formati supportati */}
          <div className="bg-blue-50 p-4 rounded-md mb-6">
            <h3 className="text-blue-800 font-medium mb-2">Formati supportati:</h3>
            <ul className="list-disc pl-5 text-blue-700 space-y-1">
              <li>File Excel (.xlsx, .xls) con colonne per titolo, tipo (film/serie/anime) e valutazione</li>
              <li>File XML esportati da altre applicazioni di tracciamento media</li>
            </ul>
          </div>
          
          {/* Area di caricamento file */}
          <div className="border-2 border-dashed border-gray-300 rounded-lg p-8 text-center">
            <input
              type="file"
              ref={fileInputRef}
              onChange={handleFileChange}
              className="hidden"
              accept=".xlsx,.xls,.xml"
            />
            
            {!fileName ? (
              <>
                <DocumentArrowUpIcon className="mx-auto h-12 w-12 text-gray-400" />
                <p className="mt-2 text-gray-600">
                  Trascina qui il tuo file o{" "}
                  <button
                    type="button"
                    onClick={() => fileInputRef.current?.click()}
                    className="text-indigo-600 hover:text-indigo-800 font-medium"
                  >
                    sfoglia
                  </button>
                </p>
                <p className="text-xs text-gray-500 mt-1">
                  Supportiamo file Excel (.xlsx, .xls) e XML (.xml)
                </p>
              </>
            ) : (
              <div className="space-y-4">
                <div className="flex items-center justify-center space-x-2">
                  {fileType === "excel" ? (
                    <svg className="h-8 w-8 text-green-600" fill="currentColor" viewBox="0 0 24 24">
                      <path d="M21.17 2.06A1 1 0 0 0 20.62 2h-13a1 1 0 0 0-1 1v5h-2a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h2v5a1 1 0 0 0 1 1h13a1 1 0 0 0 .55-.17l4-2.83a1 1 0 0 0 .45-.83V5a1 1 0 0 0-.45-.83ZM12.09 20h-3.5v-5h3.5Zm0-7h-3.5V8h3.5Zm7 5.25L16 20v-5h-2v5h-1V4h10Z" />
                    </svg>
                  ) : (
                    <svg className="h-8 w-8 text-orange-600" fill="currentColor" viewBox="0 0 24 24">
                      <path d="M12.89 3 14.5 3.4l-1 18.2L12 21l-1.5.6L9.5 3.8l1.39-.8z" />
                      <path d="M14.5 3.4 20 7l-1 16-4.5-2V3.4z" />
                      <path d="m9.5 3.8-5 3.4L5 21l5.5-2.2L9.5 3.8z" />
                      <path d="m16 10-2 1 2 1v-2zm-5 1L9 10v2l2-1z" />
                    </svg>
                  )}
                  <span className="text-lg font-medium text-gray-800">{fileName}</span>
                </div>
                
                <div className="flex justify-center space-x-3">
                  <button
                    type="button"
                    onClick={resetForm}
                    className="px-4 py-2 text-sm text-gray-700 border border-gray-300 rounded-md hover:bg-gray-50"
                  >
                    Cambia file
                  </button>
                  <button
                    type="button"
                    onClick={handleImport}
                    disabled={isUploading || !fileName}
                    className={`px-4 py-2 text-sm font-medium text-white rounded-md flex items-center ${
                      isUploading || !fileName
                        ? "bg-indigo-400 cursor-not-allowed"
                        : "bg-indigo-600 hover:bg-indigo-700"
                    }`}
                  >
                    {isUploading ? (
                      <>
                        <ArrowPathIcon className="h-4 w-4 mr-2 animate-spin" />
                        Elaborazione...
                      </>
                    ) : (
                      "Importa dati"
                    )}
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>
        
        {/* Stato dell'importazione */}
        {uploadStatus !== "idle" && (
          <div className={`rounded-md p-4 mt-6 ${
            uploadStatus === "success" ? "bg-green-50" : "bg-red-50"
          }`}>
            <div className="flex">
              <div className="flex-shrink-0">
                {uploadStatus === "success" ? (
                  <CheckCircleIcon className="h-5 w-5 text-green-600" />
                ) : (
                  <XCircleIcon className="h-5 w-5 text-red-600" />
                )}
              </div>
              <div className="ml-3">
                <h3 className={`text-sm font-medium ${
                  uploadStatus === "success" ? "text-green-800" : "text-red-800"
                }`}>
                  {uploadStatus === "success" ? "Importazione completata" : "Errore durante l'importazione"}
                </h3>
                <p className={`mt-2 text-sm ${
                  uploadStatus === "success" ? "text-green-700" : "text-red-700"
                }`}>
                  {uploadStatus === "success" 
                    ? `Sono stati importati ${importedItems.length} elementi.` 
                    : "Si è verificato un errore durante l'elaborazione del file. Riprova con un altro file o formato."}
                </p>
              </div>
            </div>
          </div>
        )}
      </div>
      
      {/* Elementi importati */}
      {importedItems.length > 0 && (
        <div className="bg-white shadow-md rounded-lg p-6">
          <h2 className="text-xl font-semibold mb-6 text-gray-800">Elementi importati</h2>
          
          <div className="overflow-x-auto">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    TMDB ID
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Titolo
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Tipo
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Valutazione
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Stato
                  </th>
                </tr>
              </thead>
              <tbody className="bg-white divide-y divide-gray-200">
                {importedItems.map((item) => (
                  <tr key={item.id}>
                    <td className="px-4 py-3 whitespace-nowrap text-sm text-gray-600">
                      {item.id}
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap text-sm font-medium text-gray-800">
                      {item.title}
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap text-sm text-gray-600">
                      <span className={`px-2 py-1 text-xs rounded-full ${
                        item.type === "movie" 
                          ? "bg-blue-100 text-blue-800" 
                          : item.type === "tv" 
                            ? "bg-purple-100 text-purple-800"
                            : "bg-orange-100 text-orange-800"
                      }`}>
                        {item.type === "movie" 
                          ? "Film" 
                          : item.type === "tv" 
                            ? "Serie TV" 
                            : "Anime"}
                      </span>
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap text-sm text-gray-600">
                      {item.rating ? (
                        <div className="flex items-center">
                          {Array.from({ length: 5 }).map((_, i) => (
                            <svg
                              key={i}
                              className={`h-4 w-4 ${
                                i < (item.rating || 0)
                                  ? "text-yellow-400"
                                  : "text-gray-300"
                              }`}
                              fill="currentColor"
                              viewBox="0 0 20 20"
                              xmlns="http://www.w3.org/2000/svg"
                            >
                              <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
                            </svg>
                          ))}
                        </div>
                      ) : (
                        <span className="text-gray-400">No rating</span>
                      )}
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap text-sm">
                      <span className="px-2 py-1 text-xs rounded-full bg-green-100 text-green-800">
                        Importato
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}
    </div>
  );
} 