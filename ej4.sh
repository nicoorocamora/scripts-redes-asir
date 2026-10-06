#!/bin/bash

numero="$1"
contadorPares="0"
suma="0"

if [[ "$numero" =~ ^-?[0-9]+$ ]]; then

	while [ "$contadorPares" -le "$numero" ]; do 
		if [ $((contadorPares % 2)) -eq 0 ]; then
			(( suma += contadorPares))
		else 
			echo " $contadorPares es impar"
		fi
		((contadorPares++))
	done
	echo "La suma total de los numeros pares hasta $numero es $suma"

else
    echo "Error: El parametro '$numero' no es un numero."
fi
