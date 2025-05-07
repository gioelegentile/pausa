import { useEffect, useRef, useState } from "react";

/* useDebounce to debounce a search input text */
export function useDebounce(text: string, delay: number) {
  const timerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const [debouncedText, setDebouncedText] = useState(text);

  useEffect(() => {
    if (timerRef.current) {
      clearTimeout(timerRef.current);
    }

    timerRef.current = setTimeout(() => {
      setDebouncedText(text);
    }, delay);

    return () => {
      if (timerRef.current) {
        clearTimeout(timerRef.current);
      }
    };
  }, [text, delay]);

  return debouncedText;
}
