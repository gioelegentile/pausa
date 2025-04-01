/*
 * The MIT License (MIT)
 *
 * Copyright (c) Franco Cavestri
 *
 * https://github.com/cavestri/themoviedb-javascript-library
 *
 */

import { env } from "~/env";

// Rappresenta un singolo film
export interface Movie {
  adult: boolean;
  backdrop_path: string | null;
  genre_ids: number[];
  id: number;
  original_language: string;
  original_title: string;
  overview: string;
  popularity: number;
  poster_path: string | null;
  release_date: string;
  title: string;
  video: boolean;
  vote_average: number;
  vote_count: number;
}

// Rappresenta la risposta dell'API contenente i film
export interface MoviesResponse {
  page: number;
  results: Movie[];
  total_pages: number,
  total_results: number
}

// Interface for common functionality
interface Common {
  api_key: string;
  base_uri: string;
  images_uri: string;
  timeout: number;
  language: string;
  generateQuery: (options: {[key: string]: string}) => string;
  validateCallbacks: (success: any, error: any) => void;
  validateRequired: (args: IArguments, argsReq: number, opt: {[key: string]: string}, optReq: string[]) => void;
  getImage: (options: {[key: string]: string}) => string;
  client: (options: {url: string}, success: (str: string) => void, error: (str: string) => void) => void;
}

// Interface for search functionality
interface Search {
  getMovie: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getCollection: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getTv: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getPerson: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getCompany: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getKeyword: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
  getMulti: (options: {[key: string]: string}, success: (str :string) => void, error: () => void) => void;
}

type TheMovieDb = {
  common?: Common,
  search?: Search,
}

const theMovieDb: TheMovieDb = {};

theMovieDb.common = {
  api_key: env.TMDB_API_KEY,
  base_uri: "https://api.themoviedb.org/3/",
  images_uri: "https://image.tmdb.org/t/p/",
  timeout: 5000,
  language: "it-IT",
  generateQuery: function(options: {[key: string]: string}) {
    'use strict';
    let myOptions, query, option;

    myOptions = options || {};
    query = "?api_key=" + theMovieDb.common!.api_key + "&language=" + theMovieDb.common!.language;

    if (Object.keys(myOptions).length > 0) {
      for (option in myOptions) {
        if (myOptions.hasOwnProperty(option) && option !== "id" && option !== "body") {
          query = query + "&" + option + "=" + myOptions[option];
        }
      }
    }
    return query;
  },
  validateCallbacks: function(success: {[key: string]: string}, error: {[key: string]: string}) {
    'use strict';
    if (typeof success !== "function" || typeof error !== "function") {
      throw "success and error parameters must be functions!";
    }
  },
  validateRequired: function(args: IArguments, argsReq: number, opt: {[key: string]: string}, optReq: string[], allOpt = true) {
    let i, allOptional;

    allOptional = allOpt || false;

    if (args.length !== argsReq) {
      throw "The method requires  " + argsReq + " arguments and you are sending " + args.length + "!";
    }

    if (allOptional) {
      return;
    }

    if (argsReq > 2) {
      for (i = 0; i < optReq.length; i = i + 1) {
        if (!opt.hasOwnProperty(optReq[i]!)) {
          throw optReq[i] + " is a required parameter and is not present in the options!";
        }
      }
    }
  },
  getImage: function(options: {[key: string]: string}) {
    'use strict';
    return theMovieDb.common!.images_uri + options.size + "/" + options.file;
  },
  client: function(options: {[key: string]: string}, success: (str: string) => void, error: (str: string) => void) {
    'use strict';
    let method, status, xhr;

    method = options.method || "GET";
    status = options.status || 200;
    xhr = new XMLHttpRequest();

    xhr.ontimeout = function() {
      error('{"status_code":408,"status_message":"Request timed out"}');
    };

    xhr.open(method, theMovieDb.common!.base_uri + options.url, true);

    if (options.method === "POST") {
      xhr.setRequestHeader("Content-Type", "application/json");
      xhr.setRequestHeader("Accept", "application/json");
    }

    xhr.timeout = theMovieDb.common!.timeout;

    xhr.onload = function(e) {
      if (xhr.readyState === 4) {
        if (xhr.status === status) {
          success(xhr.responseText);
        } else {
          error(xhr.responseText);
        }
      } else {
        error(xhr.responseText);
      }
    };

    xhr.onerror = function(e) {
      error(xhr.responseText);
    };
    if (options.method === "POST") {
      xhr.send(JSON.stringify(options.body));
    } else {
      xhr.send(null);
    }
  }
};
theMovieDb.search = {
  getMovie: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/movie" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getCollection: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/collection" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getTv: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/tv" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getPerson: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/person" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getCompany: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/company" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getKeyword: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/keyword" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  },
  getMulti: function(options: {[key: string]: string}, success: (str :string) => void, error: () => void) {
    'use strict';

    theMovieDb.common!.validateRequired(arguments, 3, options, ["query"]);

    theMovieDb.common!.validateCallbacks(success, error);

    theMovieDb.common!.client({
        url: "search/multi" + theMovieDb.common!.generateQuery(options)
      },
      success,
      error
    );
  }
};
export default theMovieDb;