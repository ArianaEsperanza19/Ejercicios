#!/bin/bash
# 4. Ordena una lista de números:
# Escribe una función que ordene una lista de números enteros. 
# Puedes utilizar cualquier algoritmo de ordenación que conozcas, como ordenación por burbuja, 
# ordenación por selección o ordenación rápida.
centinela(){

    if (( ${lista[$i]} < ${lista[$comparador]} )); then
    #echo "${lista[$i]} es mayor que ${lista[$comparador]}";
    temp=${lista[$i]};
    lista[$i]=${lista[$comparador]};
    lista[$comparador]=$temp;
    intercambio=1;
    fi
}
# Algoritmo de ordenacion burbuja.
lista=(5 2 4 1 3);
longitud=${#lista[*]};
control=1;
intercambio=0;
while (( $control == 1 ))
do

for(( i=0;i<10;i++))
do
comparador=$(($i+1));
centinela
# Si el comparador es mayor que la longitud de la lista se rompe el bucle para evitar error
if (( $((comparador+1)) == $longitud ));then
break;
fi
done
if (( intercambio == 0 )); then
control=0;
break;
fi
intercambio=0;
#echo ${lista[*]};
done
echo ${lista[*]}