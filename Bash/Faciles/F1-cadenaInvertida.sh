#!/bin/bash
# 1. invierte una cadena:
#Escribe una función que tome una cadena de texto como entrada y devuelva la cadena invertida.
#Por ejemplo, si la función recibe "Hola mundo!", debería devolver "!odnum aloH".
cadena="Hola mundo!"
echo ${cadena:0}
echo "============="
invertida=""
longitud=${#cadena}
for ((i = 1; i <= longitud; i++)); do
  elemento=${cadena:$((i - 1)):1}
  invertida="$elemento$invertida"
done
echo $invertida
