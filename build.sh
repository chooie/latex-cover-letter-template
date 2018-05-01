#!/usr/bin/env bash

mkdir -p generated
rm -rf generated/*
latexmk --pdf -outdir=generated/ cover_letter.tex
# Remove all non-pdf files from generated/
find generated/ ! -name '*.pdf' -type f -exec rm -f {} +
# Remove all auto directories (what's generating this!?)
find . -name 'auto' -type d -exec rm -rf {} +
