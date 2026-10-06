#!/bin/bash
directorio="$1"
tamano="$2"

if [ ! -d "$directorio" ]; then
    echo "Error: El directorio '$directorio' no existe."
    exit 1
fi

if ! [[ "$tamano" =~ ^[0-9]+$ ]]; then
    echo "Error: El tamano debe ser un numero entero positivo."
    exit 1
fi

echo "Buscando y borrando archivos mayores a ${tamano} en: $directorio"
find "$directorio" -type f -size +"${tamano}"M -delete
# hola esto es un comentario
