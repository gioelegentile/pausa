## [1.0.3](https://github.com/gioelegentile/pausa/compare/v1.0.2...v1.0.3) (2025-05-13)


### Bug Fixes

* simplify dependency installation in release workflow ([1a466d3](https://github.com/gioelegentile/pausa/commit/1a466d394eb1ca1dd56573eaf1e47bb567c2b6bb))

## [1.0.2](https://github.com/gioelegentile/pausa/compare/v1.0.1...v1.0.2) (2025-05-13)


### Bug Fixes

* simplified workflow ([7c4389a](https://github.com/gioelegentile/pausa/commit/7c4389ac1b2255ace0924e3556fb92af21b26009))

## [1.0.1](https://github.com/gioelegentile/pausa/compare/v1.0.0...v1.0.1) (2025-05-13)


### Bug Fixes

* simplified workflow ([7119894](https://github.com/gioelegentile/pausa/commit/711989457cb63fc9b75eda53925af189d2fd580c))

# 1.0.0 (2025-05-13)


### Bug Fixes

* add missing newline in .gitignore for better readability ([fabb2d6](https://github.com/gioelegentile/pausa/commit/fabb2d61cfe7c2f12f871b570cee08a2a7a3268d))
* add prisma/db.sqlite-journal to .gitignore ([4b60bfc](https://github.com/gioelegentile/pausa/commit/4b60bfc28674aeec5d34eaa6f2684957ed4e8ef2))
* add visual feedback for rating submission with ping effect ([1981045](https://github.com/gioelegentile/pausa/commit/1981045bfa2675dbac34ec956c2ef9dabda89564))
* aggiorna il comando per la creazione del rilascio nel workflow Docker ([2568b07](https://github.com/gioelegentile/pausa/commit/2568b07c559b437603cb9ced73be3c0caf167e9b))
* aggiorna il workflow per la creazione di tag e rilascio su GitHub ([e407ebe](https://github.com/gioelegentile/pausa/commit/e407ebed61b4e2eacd2212811b5e487d76c0128f))
* clear user picture header in testUser middleware for improved testing ([57da55a](https://github.com/gioelegentile/pausa/commit/57da55a151fd272d48899e169383225f41f7f7fe))
* correct spelling and adjust spacing in search component ([eaa69bc](https://github.com/gioelegentile/pausa/commit/eaa69bcd012ed62ab98503600e74da288991221d))
* corregge il comando di creazione del rilascio nel workflow Docker ([5585749](https://github.com/gioelegentile/pausa/commit/558574930ec1cbd1ab27b6cc0ca45a3377826643))
* enhance star rating visual feedback with transition effects ([a5a4e2f](https://github.com/gioelegentile/pausa/commit/a5a4e2ffd2ac963667018df2460d564530ef0fb9))
* ensure footer remains at bottom of page during search results ([#25](https://github.com/gioelegentile/pausa/issues/25)) ([06a97d5](https://github.com/gioelegentile/pausa/commit/06a97d54bbd20ad0eef9bded39a86406ffb03886))
* ensure movie results are sorted by popularity ([b83e56d](https://github.com/gioelegentile/pausa/commit/b83e56d2767fd2781c6cf52bb86a4cf4fb4f63dd))
* ensure voting state is reset after setting rate ([4a574e4](https://github.com/gioelegentile/pausa/commit/4a574e43346f8acc326172a4e285c4c0239e99fa))
* escape quotes in no results found message for better display ([d37fef2](https://github.com/gioelegentile/pausa/commit/d37fef241c641840e247493a75ca925ecc36bc28))
* improve infinite scroll loading logic in RatedWorks component ([35aa469](https://github.com/gioelegentile/pausa/commit/35aa469a0c6393c56101da79b768864c5c3fc404))
* refactor GitHub Actions to streamline version bumping for develop branch ([0e85560](https://github.com/gioelegentile/pausa/commit/0e855601b2eb84139554f71a33a9c573d7a92281))
* replace deprecated CSSProperties import and improve default user initial rendering ([0501e46](https://github.com/gioelegentile/pausa/commit/0501e461962204ba1dd2d988841fed53f4a68761))
* update Docker workflow to handle versioning and increment patch version ([8f7c359](https://github.com/gioelegentile/pausa/commit/8f7c359cb67d63f7eb7215362e6788b0c7e052c3))
* update release creation command in Docker workflow ([e5713b9](https://github.com/gioelegentile/pausa/commit/e5713b9b624466a90a1edd03f63ed496e648b0d0))
* update tag creation command in Docker workflow ([1ef69ea](https://github.com/gioelegentile/pausa/commit/1ef69ea3b496abc90c3890050fa8c55e8144afa7))
* update tag creation command in Docker workflow ([5c01018](https://github.com/gioelegentile/pausa/commit/5c01018d128c9d05574df4e0c29d30fa5fc5029b))
* use nullish coalescing operator for default content type in base64 conversion ([92ec436](https://github.com/gioelegentile/pausa/commit/92ec4368749e636ecb9a60fd11c3f134da4869ef))
* utilizza l'operatore nullish coalescing per gestire i valori predefiniti nel middleware ([1f47f81](https://github.com/gioelegentile/pausa/commit/1f47f817d089cff40bbbedf41623f42b7f026460))


### Features

* add 'coming soon' indicators and replace img with Image component in search ([ca7883e](https://github.com/gioelegentile/pausa/commit/ca7883ee5ff5acb073fcbadb2a088e79cc63ebe8))
* add API routes for movies and TV shows; update search component to use new routes; refactor database schema for Genre and Work models ([094fbd2](https://github.com/gioelegentile/pausa/commit/094fbd2eeba56afd770119970a980e0725fb7aad))
* add bug report and feature request templates for improved issue tracking ([4a8f13f](https://github.com/gioelegentile/pausa/commit/4a8f13f67b46de5e4054e7b20bc8daa825861dd5))
* add Dialog component; refactor filters and search components to use Dialog for improved UI and state management ([be104a9](https://github.com/gioelegentile/pausa/commit/be104a9916cfbce932b68a6adcdc18329a717ddc))
* add director, title, year, and posterPath fields to Work; implement VotesContent and TabellaVoti components for displaying user ratings ([10ed993](https://github.com/gioelegentile/pausa/commit/10ed993d9c02ccdd3454da105cbea2e1871bf38d))
* add experimental React compiler support and update dependencies ([d6dfc64](https://github.com/gioelegentile/pausa/commit/d6dfc6445674168ef7ce945403a4a0b0db957f36))
* add gap between elements in rated work layout for improved spacing ([bbf353f](https://github.com/gioelegentile/pausa/commit/bbf353fc6a0898c0de3d76bf6b531d0f9d8d1f39))
* add Loading component with skeleton loading UI; update package.json to include react-loading-skeleton dependency ([62bc3bb](https://github.com/gioelegentile/pausa/commit/62bc3bbcc1c3ed169dd9f026c62210d30d5da257))
* add media type button and votes page layout; implement loading state and refactor work API router ([4025ad8](https://github.com/gioelegentile/pausa/commit/4025ad89252e0c29b9ba353f3ed8a08ade8f4048))
* add rating functionality with new rating actions and integrate into RatingDialog ([0e33090](https://github.com/gioelegentile/pausa/commit/0e33090b5166138adcd27fa9067189adbe12840b))
* add TMDB_API_KEY to environment configuration and update TMDB API integration ([5ccbc3f](https://github.com/gioelegentile/pausa/commit/5ccbc3ff7711b16adb445f8f21237bc067a347d5))
* added semantic-relase ([1a396df](https://github.com/gioelegentile/pausa/commit/1a396df30143bf93999475062d0744073ed8c0a8))
* added semantic-release ([6a4d497](https://github.com/gioelegentile/pausa/commit/6a4d497814223f291b923caae4cbd3fd303a31b5))
* added semantic-release ([e27e8bb](https://github.com/gioelegentile/pausa/commit/e27e8bb56e79ca7f75c3dbc1f3bb152894a0a331))
* added semantic-release ([f6e6d6f](https://github.com/gioelegentile/pausa/commit/f6e6d6f9b8bff727667b445b1a4754627f26c237))
* added semantic-release ([2339352](https://github.com/gioelegentile/pausa/commit/23393522ffba126db0fdf40f1516ff62e8a4d1ce))
* added semantic-release ([1b7de81](https://github.com/gioelegentile/pausa/commit/1b7de810489a1eae358ca77426c8dad02ba35653))
* aggiungi l'intestazione dell'immagine utente nel middleware ([880b678](https://github.com/gioelegentile/pausa/commit/880b678ff06b66ddb3fb9d39847291d7242d3eac))
* aggiungi supporto per l'immagine utente nelle API di autenticazione ([b19c150](https://github.com/gioelegentile/pausa/commit/b19c15028672f197a73d104083bc856239da747c))
* enhance filters component; integrate genre and year range selection, improve loading states, and refactor for better state management ([445c72b](https://github.com/gioelegentile/pausa/commit/445c72b7ac18232d2eafa7178cc3c8ffb895a18c))
* enhance logo component with size and visibility options; add version fetching API ([aabcfbf](https://github.com/gioelegentile/pausa/commit/aabcfbf1191b33b0af19ad30bb37beb27bc62b86))
* enhance rated works display with Image component and NoPoster fallback; improve accessibility and loading behavior ([1968901](https://github.com/gioelegentile/pausa/commit/1968901c7fcbd0da8084cf23e08e59e57922d5bd))
* enhance rating component and search functionality with media type selection ([cd029f8](https://github.com/gioelegentile/pausa/commit/cd029f84f4682ec4b4693486e41c92ffa19e213c))
* enhance UI components with improved styling and add loading placeholder for search results ([9526f2d](https://github.com/gioelegentile/pausa/commit/9526f2d85d9704f84728edaa3f11c1244dfc6d6b))
* implement rating functionality with RatingDialog and integrate into Search and Work components ([30140ee](https://github.com/gioelegentile/pausa/commit/30140ee754182917e639b7a5b3897be69a5f7aea))
* implement rating functionality; add RatingButton and Dialog components, refactor RatedWork and RatingDialogContent for improved user interaction ([68d9c20](https://github.com/gioelegentile/pausa/commit/68d9c20e86fedf6b18d4ecf2f435eaa95b1585ac))
* implement search focus handling and debounce search functionality ([#34](https://github.com/gioelegentile/pausa/issues/34)) ([b6a5294](https://github.com/gioelegentile/pausa/commit/b6a529435cbaa122563f527d92a4ca7ef9dca918))
* implement search functionality with media type selection and debounce hook ([0950268](https://github.com/gioelegentile/pausa/commit/0950268ce97dfee11beee19213a40d573fcd41fd))
* integrate RAWG API for game genre fetching; refactor media type handling and update related components ([b81c26f](https://github.com/gioelegentile/pausa/commit/b81c26fbb734010db8b4fd23f8a7a655927493f5))
* refactor infinite query for works; replace getAllRatedByType with getInfiniteWorks for improved performance and simplicity ([15335de](https://github.com/gioelegentile/pausa/commit/15335de9832445e68a5fe020f1e22dc9ab87ef32))
* refactor media type handling; replace string enums with mediaTypes array for improved type safety ([9b0c558](https://github.com/gioelegentile/pausa/commit/9b0c55858c6ec27d40f7f956c8e031b00e86b1ab))
* refactor rated works components; replace RatedWorksList with RatedWork for improved rendering and infinite scrolling ([c1a32af](https://github.com/gioelegentile/pausa/commit/c1a32af783f06bd8e0cfbec0295ff732ba09c5c2))
* Refactor rating system and improve user experience ([b62c9ea](https://github.com/gioelegentile/pausa/commit/b62c9eac4d604709b3e169f3419caf238fd9ce23))
* refactor useDebounce hook and improve search functionality; update media type handling and integrate new WorkModel type ([c33d925](https://github.com/gioelegentile/pausa/commit/c33d925fca08fee4ac64e0a5a176c255417c9a2d))
* remove Naruto SVG icon and update loading and layout components for improved UI and functionality ([7af43e9](https://github.com/gioelegentile/pausa/commit/7af43e99573186607b47ea3f46e44ed68c5556ee))
* replace Heroicons with FontAwesome icons in logo and rating components ([ae69962](https://github.com/gioelegentile/pausa/commit/ae699620257c3e086ab3a3d2e189fc8a4d006167))
* trying to improve performance by adding caching ([cd37544](https://github.com/gioelegentile/pausa/commit/cd3754466ac39603bd18209920db461f955686e1))
* update MediaTypeButton styling and replace Naruto icon with FontAwesomeIcon ([46bece0](https://github.com/gioelegentile/pausa/commit/46bece04da46ae028f10753782205f27134e3884))
* update MediaTypeButton styling and replace Naruto icon with FontAwesomeIcon ([4f7e7cc](https://github.com/gioelegentile/pausa/commit/4f7e7cc46d3c4919d1463061ee505b26b159be6e))
* update rating button text display; wrap button text in a span for improved layout ([e505d8c](https://github.com/gioelegentile/pausa/commit/e505d8c1a397d5ff40cb24a80e3b55390b1ba188))
* update rating component to include half-star ratings and refactor search results handling ([7f72c99](https://github.com/gioelegentile/pausa/commit/7f72c99ef1baad840e4fb92e53b7291e661cefd4))
* update version to 0.1.6-snapshot and add new dependencies (axios, csv-parse, dotenv) ([084d543](https://github.com/gioelegentile/pausa/commit/084d543e0921372e045435a887904bc9a72b5685))
* update VotesPageLayout to handle async params; improve type handling for mediaType ([8e1b123](https://github.com/gioelegentile/pausa/commit/8e1b12326d791b3f13692e08d47ed06f9a2559c9))
* update Work and WorkRating models to replace tmdbId with externalId and add type field ([9c77c75](https://github.com/gioelegentile/pausa/commit/9c77c7518a60c9523535ba7e3a2d348cb0500b95))
* wrap children in a div for improved layout consistency in VotesPageLayout ([f2cf06a](https://github.com/gioelegentile/pausa/commit/f2cf06ad51d34cb9d820ad0c237a2da3a636b5a8))
