import { useCallback, useEffect, useState } from "react";

export function useMobile() {
  const [isSearchFocused, setIsSearchFocused] = useState(false);
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const checkIfMobile = () => {
      setIsMobile(window.innerWidth < 768);
    };

    // Initial check
    checkIfMobile();

    // Set up listener for resize
    window.addEventListener("resize", checkIfMobile);

    // Handle back button press
    const handlePopState = () => {
      setIsSearchFocused(false);
    };

    window.addEventListener("popstate", handlePopState);

    return () => {
      window.removeEventListener("resize", checkIfMobile);
      window.removeEventListener("popstate", handlePopState);
    };
  }, [isSearchFocused, isSearchFocused]);

  const handleSearchFocus = useCallback(() => {
    if (isMobile) {
      setIsSearchFocused(true);
      // Add history entry to handle back button
      window.history.pushState({ searchFocused: true }, "");
    }
  }, [isMobile]);

  const handleExitSearchFocus = useCallback(() => {
    if (isSearchFocused) {
      setIsSearchFocused(false);
      window.history.back(); // This will trigger the popstate event handler
    }
  }, [isSearchFocused]);

  return {
    isSearchFocused,
    isMobile,
    handleSearchFocus,
    handleExitSearchFocus,
  };
}
