"use client";

import React, { useState } from "react";
import { Search } from "~/app/_components/search";
import { type MediaType } from "~/app/models/types";

export default function SearchWrapper({
  mediaType,
  mediaTypeTitle,
  headerContent,
}: {
  mediaType: MediaType;
  mediaTypeTitle: string;
  headerContent: React.ReactNode;
}) {
  const [isSearchFocused, setIsSearchFocused] = useState(false);

  return (
    <Search
      mediaType={mediaType}
      mediaTypeTitle={mediaTypeTitle}
      headerContent={headerContent}
      isSearchFocused={isSearchFocused}
      onSearchFocusAction={() => setIsSearchFocused(true)}
      onSearchBlurAction={() => setIsSearchFocused(false)}
    />
  );
}
