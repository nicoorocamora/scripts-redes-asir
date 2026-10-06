#!/bin/bash

directorio="$1"

if [ -d "$directorio" ]; then
    archivos=$(find "$directorio" -type f | wc -l)
    directorios=$(find "$directorio" -type d | wc -l)

    echo "Archivos: $archivos"
    echo "Directorios: $directorios"
else
	echo "$directorio no es un directorio"
fi
