#!/bin/bash
fichero="$1"
opcion="$2"

if [ -f "$fichero" ]; then
	if [ "$opcion" = "-a" ]; then
		date >> "$fichero" 
	elif [ "$opcion" = "-s" ]; then
		date > "$fichero"
	else 
		echo "opcion incorrecta, usa -a o -s"
		exit 1	
	fi
else 
	date > "$fichero"
fi
