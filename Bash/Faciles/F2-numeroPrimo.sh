#!/bin/bash
# 2. Determina si un número es primo:
#Escribe una función que determine si un número entero dado es primo o no. Un número primo es un 
#número natural mayor que 1 que tiene solo dos divisores positivos: 1 y sí mismo.
numero=1.2;
raiz=$(echo "scale=4; sqrt($numero)" | bc);
redondeo=$(echo "scale=0; $raiz/1" | bc -l);
j=1;
resultado=1;
for((i=0;i<=$redondeo;i++))
do
while [ $j != $redondeo ];
do
division=$((numero%j));
if (( $division != 0 )); then
resultado=0;
fi
if (( $j == $redondeo )); then
break
fi
j=$((j+1));
done
done

if (( $resultado == 1 )); then
echo "El numero $numero es primo"
fi
if (( $resultado == 0 )); then
echo "El numero $numero NO es primo"
fi