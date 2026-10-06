#!/bin/bash
directorio="$1"
extension="$2"
dias="$3"
prefijo="$4"

find "$directorio" -type f -name "*.$extension" -mtime -"$dias" |
while read -r archivo; do
    dir=$(dirname "$archivo")
    nombre=$(basename "$archivo")

    mv "$archivo" "$dir/$prefijo$nombre"
done
