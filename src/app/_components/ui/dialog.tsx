import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons";

type DialogProps = {
  bgClassName?: string;
  isOpen: boolean;
  onClose: () => void;
  children?: React.ReactNode;
};

export default function Dialog({
  bgClassName = "bg-gray-600",
  isOpen,
  onClose,
  children,
}: DialogProps) {
  "use no memo";

  return (
    <div className="relative z-50">
      {isOpen && (
        <>
          {/* Sfondo blur */}
          <div
            className="fixed inset-0 bg-black/30 backdrop-blur-sm transition-opacity duration-300"
            onClick={onClose}
          />

          {/* Modale */}
          <div
            className="fixed inset-0 z-20 flex items-center justify-center"
            onClick={(e) => e.stopPropagation()}
          >
            <div
              className={`animate-scale-in w-80 scale-100 transform rounded-2xl ${bgClassName} p-6 text-start opacity-100 shadow-xl transition duration-300`}
            >
              <button
                onClick={onClose}
                className="absolute top-2 right-2 cursor-pointer text-gray-400 hover:text-white focus:outline-none"
                aria-label="Chiudi"
              >
                <FontAwesomeIcon icon={faTimes} className="h-5 w-5" />
              </button>

              {children}
            </div>
          </div>
        </>
      )}

      {/* Animazione di scala custom con Tailwind */}
      <style jsx>{`
        @keyframes scale-in {
          0% {
            transform: scale(0.75);
            opacity: 0;
          }
          100% {
            transform: scale(1);
            opacity: 1;
          }
        }

        .animate-scale-in {
          animation: scale-in 0.2s ease-out forwards;
        }
      `}</style>
    </div>
  );
}
