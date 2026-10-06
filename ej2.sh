#!/bin/bash

directorio="$1"

if [ -d "$directorio" ]; then
	ls -lhS "$directorio"
else
	echo "$directorio no es un directorio"
fi

