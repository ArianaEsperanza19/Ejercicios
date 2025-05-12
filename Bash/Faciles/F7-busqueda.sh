#!/bin/bash
# 7. Implementa un algoritmo de búsqueda:
# Escribe un programa que implemente un algoritmo de búsqueda, como búsqueda binaria o búsqueda en anchura, 
# para encontrar un elemento específico en una lista o matriz ordenada.

# Ordenar la lista
lista=(5 2 4 1 3);
longitud=${#lista[*]};
lista=($(printf "%s\n" "${lista[@]}" | sort -n))

# La lista ahora esta ordenada.
busqueda=2;
control=0;
mitad=$(($longitud/2));
pivote=$mitad;
inicio=0;
fin=$((longitud-1));
echo "busqueda: $busqueda";
# 1 2 3 4 5
# $inicio -le $fin
while [ $control = 0 ]
do 
if (( ${lista[$pivote]} == $busqueda )); then
control=1; 
echo "Encontrado en la posicion $pivote";
break;
fi
if (( ${lista[$pivote]} > $busqueda )); then
pivote=$((pivote - 1));
fi
if (( ${lista[$pivote]} < $busqueda )); then
pivote=$((pivote + 1));
fi
if (( $pivote > $fin )) || (($pivote < $inicio )); then
echo "No encontrado";
break
fi
done
