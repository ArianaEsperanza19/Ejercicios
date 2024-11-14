#!/bin/bash
# 15. Simulador de dados

echo "Simulador de dados";
echo "-----------------";
read -p "Ingrese la cantidad de dados: " cantidad_dados;
caras=( 1 2 3 4 5 6 );
dado=0;
resultado=0;
for ((i = 1; i <= $cantidad_dados; i++)); do
dado=${caras[$((RANDOM % 6))]};
echo "Dado $i: $dado";
resultado=$(( $resultado + $dado ));
done

echo "El resultado es: $resultado";