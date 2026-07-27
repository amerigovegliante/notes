#!/bin/bash

INPUT_DIR="${1:-./src}"
OUTPUT_DIR="${2:-./docs}"
ROOT_DIR="${3:-.}" 

mkdir -p "$OUTPUT_DIR"

for file in "$INPUT_DIR"/*.typ; do
  if [ -f "$file" ]; then
    filename=$(basename -- "$file")
    name="${filename%.*}"
    output_file="$OUTPUT_DIR/${name}.pdf"
    
    echo "Compiling $filename -> $output_file"
    typst compile --root "$ROOT_DIR" "$file" "$output_file"
  fi
done