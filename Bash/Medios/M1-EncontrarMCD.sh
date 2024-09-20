#!/bin/bash
# 1. Encuentra el máximo común divisor (MCD) de dos números:
#Escribe una función que calcule el máximo común divisor (MCD) de dos números enteros positivos. 
#El MCD es el número entero más grande que es divisor tanto del primer número como del segundo.
num1=56;
num2=42;

centinela(){
    local residuo=$1;
    prueba1=$((56%residuo));
    prueba2=$((42%residuo));
    control=0;
    if(( $prueba1 == 0 && $prueba2 == 0));then
            control=1;
    fi
}

residuo=$((num1%num2));
while (( residuo != 0 )); do
    centinela $residuo;
    if (( control == 1 )); then
    break;
    fi
    residuo=$((num1%num2));
    num1=$num2;
    num2=$residuo;
done

echo "El MCD es $residuo";
#debe ser 14