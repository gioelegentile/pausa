import React, { useState, useRef, useEffect } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faStar as faStarSolid } from '@fortawesome/free-solid-svg-icons';
import { faStar as faStarRegular } from '@fortawesome/free-regular-svg-icons';
import { faStarHalfAlt } from '@fortawesome/free-solid-svg-icons';

type StarRatingSliderProps = {
  onChange?: (rating: number) => void;
  initialRating?: number;
};

const StarRatingSlider = ({ onChange, initialRating = 0 }: StarRatingSliderProps) => {
  const [rating, setRating] = useState(initialRating);
  const [isDragging, setIsDragging] = useState(false);
  const [tempRating, setTempRating] = useState(initialRating);
  const [hoverRating, setHoverRating] = useState(0);
  const containerRef = useRef<HTMLDivElement>(null);

  // Funzione per calcolare il rating in base alla posizione del mouse o touch
  const calculateRating = (clientX: number): number => {
    const container = containerRef.current;
    if (!container) return 0;

    const rect = container.getBoundingClientRect();
    const width = rect.width;
    const leftPosition = clientX - rect.left;

    // Calcola la posizione relativa (0 a 1)
    const relativePosition = leftPosition / width;
    // Moltiplica per il numero massimo di stelle (5)
    let rawRating = relativePosition * 5;

    // Arrotonda al 0.5 più vicino
    rawRating = Math.round(rawRating * 2) / 2;

    // Limita il rating tra 0.5 e 5
    return Math.max(0.5, Math.min(5, rawRating));
  };

  // Gestisce l'inizio dell'azione di drag
  const handleMouseDown = (e: React.MouseEvent<HTMLDivElement>) => {
    setIsDragging(true);
    const newRating = calculateRating(e.clientX);
    setTempRating(newRating);
  };

  // Gestisce l'inizio dell'azione di touch
  const handleTouchStart = (e: React.TouchEvent<HTMLDivElement>) => {
    setIsDragging(true);
    const newRating = calculateRating(e.touches[0]!.clientX);
    setTempRating(newRating);
  };

  // Gestisce il movimento durante il drag
  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    if (isDragging) {
      const newRating = calculateRating(e.clientX);
      setTempRating(newRating);
    }
  };

  // Gestisce il movimento durante il touch
  const handleTouchMove = (e: React.TouchEvent<HTMLDivElement>) => {
    if (isDragging) {
      const newRating = calculateRating(e.touches[0]!.clientX);
      setTempRating(newRating);
    }
  };

  // Gestisce il rilascio del mouse o touch
  const handleMouseUp = () => {
    if (isDragging) {
      setRating(tempRating);
      setIsDragging(false);
      if (onChange) {
        onChange(tempRating);
      }
    }
  };

  // Gestisce la fine del touch
  const handleTouchEnd = () => {
    if (isDragging) {
      setRating(tempRating);
      setIsDragging(false);
      if (onChange) {
        onChange(tempRating);
      }
    }
  };

  // Gestisce il click su una stella specifica
  const handleStarClick = (selectedRating: number) => {
    setRating(selectedRating);
    if (onChange) {
      onChange(selectedRating);
    }
  };

  // Gestisce l'hover su una stella
  const handleStarHover = (selectedRating: number) => {
    if (!isDragging) {
      setHoverRating(selectedRating);
    }
  };

  // Rimuove l'hover quando il mouse esce dalla zona delle stelle
  const handleMouseLeave = () => {
    setHoverRating(0);

    // Se siamo nel mezzo di un'operazione di drag, completala
    if (isDragging) {
      setRating(tempRating);
      setIsDragging(false);
      if (onChange) {
        onChange(tempRating);
      }
    }
  };

  // Aggiunge event listeners a tutto il documento per gestire il rilascio del mouse/touch ovunque
  useEffect(() => {
    if (isDragging) {
      const handleGlobalMouseUp = () => {
        setIsDragging(false);
        setRating(tempRating);
        if (onChange) {
          onChange(tempRating);
        }
      };

      const handleGlobalMouseMove: EventListener = (e: Event) => {
        if (isDragging) {
          const mouseEvent = e as MouseEvent;
          const newRating = calculateRating(mouseEvent.clientX);
          setTempRating(newRating);
        }
      };

      const handleGlobalTouchEnd = handleGlobalMouseUp;

      const handleGlobalTouchMove: EventListener = (e: Event) => {
        if (isDragging) {
          const touchEvent = e as TouchEvent;
          if (touchEvent.touches && touchEvent.touches.length > 0) {
            const newRating = calculateRating(touchEvent.touches[0]!.clientX);
            setTempRating(newRating);
          }
        }
      };

      document.addEventListener('mouseup', handleGlobalMouseUp);
      document.addEventListener('mousemove', handleGlobalMouseMove);
      document.addEventListener('touchend', handleGlobalTouchEnd);
      document.addEventListener('touchcancel', handleGlobalTouchEnd);
      document.addEventListener('touchmove', handleGlobalTouchMove);

      return () => {
        document.removeEventListener('mouseup', handleGlobalMouseUp);
        document.removeEventListener('mousemove', handleGlobalMouseMove);
        document.removeEventListener('touchend', handleGlobalTouchEnd);
        document.removeEventListener('touchcancel', handleGlobalTouchEnd);
        document.removeEventListener('touchmove', handleGlobalTouchMove);
      };
    }
  }, [isDragging, tempRating, onChange]);

  // Renderizza le stelle
  const renderStars = () => {
    const stars = [];
    const displayRating = isDragging ? tempRating : hoverRating || rating;

    for (let i = 1; i <= 5; i++) {
      let starIcon;
      // Scegli l'icona in base al rating attuale
      if (displayRating >= i) {
        starIcon = faStarSolid; // Stella piena
      } else if (displayRating + 0.5 >= i) {
        starIcon = faStarHalfAlt; // Mezza stella
      } else {
        starIcon = faStarRegular; // Stella vuota
      }

      stars.push(
        <div
          key={i}
          className={`cursor-pointer px-1 transition-all ${tempRating > i - 1 ? 'scale-130' : 'opacity-50'}`}
          onClick={() => handleStarClick(i)}
          onMouseEnter={() => handleStarHover(i)}
        >
          <FontAwesomeIcon icon={starIcon} className="text-yellow-400 text-2xl" />
        </div>
      );

      // Aggiungi l'opzione di mezzo voto (tranne dopo l'ultima stella)
      if (i < 5) {
        stars.push(
          <div
            key={i + 0.5}
            className="cursor-pointer"
            onClick={() => handleStarClick(i + 0.5)}
            onMouseEnter={() => handleStarHover(i + 0.5)}
          >
            <div className="w-0 h-6 mx-0"></div>
          </div>
        );
      }
    }

    return stars;
  };

  return (
    <div className="flex flex-col items-center">
      <div
        ref={containerRef}
        className="flex items-center justify-center select-none"
        onMouseDown={handleMouseDown}
        onMouseMove={handleMouseMove}
        onMouseUp={handleMouseUp}
        onMouseLeave={handleMouseLeave}
        onTouchStart={handleTouchStart}
        onTouchMove={handleTouchMove}
        onTouchEnd={handleTouchEnd}
        onTouchCancel={handleTouchEnd}
      >
        {renderStars()}
      </div>
      <div className="mt-2 text-lg font-semibold text-white">
        {isDragging ? tempRating : rating} / 5
      </div>
    </div>
  );
};

export default StarRatingSlider;