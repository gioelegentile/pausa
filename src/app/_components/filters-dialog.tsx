"use client";

import {
  faFilter,
  faFilterCircleXmark,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import React, { useState } from "react";
import { type Filters } from "~/app/_models/filters";
import { api } from "~/trpc/react";
import { type MediaType } from "~/app/_models/works";
import { StaleTimes } from "~/app/_utils/stale-times";
import { Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle, DialogTrigger } from "./ui/dialog";
import { Button } from "./ui/button";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "./ui/select";
import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from "./ui/form";
import { useForm } from "react-hook-form";
import { z } from "zod";
import { zodResolver } from "@hookform/resolvers/zod"
import { Popover, PopoverContent, PopoverTrigger } from "./ui/popover";
import { Check, ChevronsUpDown } from "lucide-react";
import { Command, CommandEmpty, CommandGroup, CommandInput, CommandItem, CommandList } from "./ui/command";
import { cn } from "../_lib/utils";

type FiltersProps = {
  mediaType: MediaType;
  onConfirm: (filters: Filters) => void;
};

const formSchema = z.object({
  director: z.string().optional(),
  genre: z.string().optional(),
  minYear: z.string(),
  maxYear: z.string(),
});

const defaultValues: z.infer<typeof formSchema> = { 
  minYear: "1900",
  maxYear: new Date().getFullYear().toString(),
  director: "",
  genre: "",
}

export function FiltersDialog({ mediaType, onConfirm }: FiltersProps) {
  const [open, setOpen] = useState(false);

  const { data: directors } = api.work.getAllUniqueDirectors.useQuery(
    mediaType,
    {
      staleTime: StaleTimes.ONE_WEEK,
    },
  );
  const { data: genres } = api.work.getAllUniqueGenres.useQuery(mediaType, {
    staleTime: StaleTimes.ONE_WEEK,
  });

  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues,
  })

  function onSubmit(values: z.infer<typeof formSchema>) {
    onConfirm(values);
    setOpen(false);
  }

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        <Button>
          <FontAwesomeIcon
            icon={form.formState.isDirty ? faFilterCircleXmark : faFilter}
            className="text-gray-200"
          />
          <div className="ml-3 text-sm text-gray-200">Filtri</div>
        </Button>
      </DialogTrigger>
      <DialogContent className="bg-gray-800 text-white border-0 w-full">
        <DialogHeader>
          <DialogTitle className="text-lg font-bold text-white">
            Filtri
          </DialogTitle>
          <DialogDescription>
            Scegli i filtri per la tua ricerca.
          </DialogDescription>
        </DialogHeader>

        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} onReset={() => {form.reset()}}>

            <div className="flex flex-col gap-2 w-full mb-4">

              <FormField
                control={form.control}
                name="director"
                render={({field}) => (
                  <FormItem>
                    <FormLabel>Regista</FormLabel>
                    <Popover>
                      <PopoverTrigger asChild>
                        <FormControl>
                          <Button
                            variant="outline"
                            role="combobox"
                            className={cn(
                              "justify-between w-full",
                            )}
                          >
                            {field.value ? directors!.find((d) => d === field.value)
                              : "Seleziona un regista"}
                            <ChevronsUpDown className="opacity-50" />
                          </Button>
                        </FormControl>
                      </PopoverTrigger>
                      <PopoverContent className="w-[200px] p-0">
                        <Command>
                          <CommandInput
                            placeholder="Cerca un regista..."
                            className="h-9"
                          />
                          <CommandList>
                            <CommandEmpty>Nessun regista trovato.</CommandEmpty>
                            <CommandGroup>
                              {directors!.map((director) => (
                                <CommandItem
                                  value={director}
                                  key={director}
                                  onSelect={() => form.setValue("director", director)}
                                >
                                  {director}
                                  <Check
                                    className={cn(
                                      "ml-auto",
                                      director === field.value
                                        ? "opacity-100"
                                        : "opacity-0"
                                    )}
                                  />
                                </CommandItem>
                              ))}
                            </CommandGroup>
                          </CommandList>
                        </Command>
                      </PopoverContent>
                    </Popover>
                  </FormItem>
                )} />

              <div className="flex flex-row gap-2 w-full justify-between">

                <FormField 
                  control={form.control}
                  name="minYear"
                  render={({field}) => (
                    <FormItem className="grow">
                      <FormLabel>Anno Minimo</FormLabel>
                      <FormControl>
                        <Select onValueChange={field.onChange} value={field.value}>
                          <SelectTrigger className="w-full">
                            <SelectValue placeholder="Anno Minimo" />
                          </SelectTrigger>
                          <SelectContent>
                            {Array.from(
                              { length: new Date().getFullYear() - 1899 },
                              (_, i) => 1900 + i,
                            ).map((year) => (
                              <SelectItem key={year} value={year.toString()}>
                                {year}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </FormControl>
                    </FormItem>
                  )} />

                <FormField
                  control={form.control}
                  name="maxYear"
                  render={({field}) => (
                    <FormItem className="grow">
                      <FormLabel>Anno Massimo</FormLabel>
                      <FormControl>
                        <Select onValueChange={field.onChange} value={field.value}>
                          <SelectTrigger className="w-full">
                            <SelectValue placeholder="Anno Massimo" />
                          </SelectTrigger>
                          <SelectContent>
                            {Array.from(
                              { length: new Date().getFullYear() - 1899 },
                              (_, i) => 1900 + i,
                            ).map((year) => (
                              <SelectItem key={year} value={year.toString()}>
                                {year}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </FormControl>
                    </FormItem>
                  )} />

              </div>

              <FormField
                control={form.control}
                name="genre"
                render={field => (
                  <FormItem>
                    <FormLabel>Genere</FormLabel>
                    <Popover>
                      <PopoverTrigger asChild>
                        <FormControl>
                          <Button
                            variant="outline"
                            role="combobox"
                            className={cn(
                              "justify-between w-full text-white",
                            )}
                          >
                            {field.field.value ? genres!.find((g) => g === field.field.value)
                              : "Seleziona un genere"}
                            <ChevronsUpDown className="opacity-50" />
                          </Button>
                        </FormControl>
                      </PopoverTrigger>
                      <PopoverContent className="w-[200px] p-0">
                        <Command>
                          <CommandInput
                            placeholder="Cerca un genere..."
                            className="h-9"
                          />
                          <CommandList>
                            <CommandEmpty>Nessun genere trovato.</CommandEmpty>
                            <CommandGroup>
                              {genres!.map((genre) => (
                                <CommandItem
                                  value={genre}
                                  key={genre}
                                  onSelect={() => form.setValue("genre", genre)}
                                >
                                  {genre}
                                  <Check
                                    className={cn(
                                      "ml-auto",
                                      genre === field.field.value
                                        ? "opacity-100"
                                        : "opacity-0"
                                    )}
                                  />
                                </CommandItem>
                              ))}
                            </CommandGroup>
                          </CommandList>
                        </Command>
                      </PopoverContent>
                    </Popover>
                  </FormItem>
                )} />

            </div>

            <FormMessage />

            <DialogFooter>
              <Button
                type="reset"
                className="cursor-pointer rounded-md bg-gray-500 px-4 py-2 text-white hover:bg-gray-400"
              >
                Reset
              </Button>
              <Button
                type="submit"
                className="cursor-pointer rounded-md bg-gradient-to-br from-purple-600 to-blue-500 px-4 py-2 text-white hover:bg-gradient-to-bl"
              >
                Conferma
              </Button>
            </DialogFooter>
          </form>
        </Form>
      </DialogContent>
    </Dialog>
  );
}
