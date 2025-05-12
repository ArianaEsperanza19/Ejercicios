#!/bin/bash
# 2. Determina si un número es primo:
#Escribe una función que determine si un número entero dado es primo o no. Un número primo es un
#número natural mayor que 1 que tiene solo dos divisores positivos: 1 y sí mismo.
numero=7
redondeo=50
j=1
resultado=1
for ((i = 0; i <= $redondeo; i++)); do
  division=$((numero % j))
  if (($division == 0)); then
    if (($j != 1 && $j != $numero)); then
      resultado=0
    fi
  fi
  if (($j == $redondeo)); then
    break
  fi
  j=$((j + 1))
done

if (($resultado == 1)); then
  echo "El numero $numero es primo"
fi
if (($resultado == 0)); then
  echo "El numero $numero NO es primo"
fi
