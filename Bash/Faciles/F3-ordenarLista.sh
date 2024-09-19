#!/bin/bash
# 4. Ordena una lista de números:
# Escribe una función que ordene una lista de números enteros. 
# Puedes utilizar cualquier algoritmo de ordenación que conozcas, como ordenación por burbuja, 
# ordenación por selección o ordenación rápida.

# Algoritmo de ordenacion burbuja.
lista=(5 2 4 1 3);
longitud=${#lista[*]};
control=1;
while [ $control = 1 ]
do
intercambio=0;

for(( i=0;i<$longitud;i++ ))
do
#echo "Elemento $((i+1)) de $longitud";
comparador=$(($i+1));

if (( $i < $longitud ));then

    if (( ${lista[$i]} > ${lista[$comparador]} )); then
    # echo "${lista[$i]} es mayor que ${lista[$comparador]}";
    temp=${lista[$i]};
    lista[$i]=${lista[$comparador]};
    lista[$comparador]=$temp;
    intercambio=1;
    fi #If de mayor
fi #If maximo