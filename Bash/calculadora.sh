#!/bin/bash
# 5. Implementa una calculadora básica:
# Escribe una aplicación de calculadora simple que pueda realizar operaciones básicas como suma, resta, 
# multiplicación y división. La aplicación debe tomar dos números del usuario y la operación que 
# desea realizar, y luego mostrar el resultado.

opcion=''

echo "A-Suma";
echo "B-Resta";
echo "C-Multiplicacion";
echo "D-Division";

read -p "La operacion que desea realizar: " opcion
clear
case $opcion in
"A")
echo "ADICION"
echo "=====================================" 
read -p "Ingrese el primer sumando: " sum1
read -p "Ingrese el segundo sumando: " sum2
echo "-------------------------------------"
echo "La suma de los elementos es: " $((sum1+sum2));
;;

"B") 
echo "SUSTRACCION"
echo "====================================="
read -p "Ingrese el primer sustraendo: " sus1
read -p "Ingrese el segundo sustraendo: " sus2
echo "-------------------------------------"
echo "La resta de los elementos es: " $((sus1-sus2));
;;

"C") 
echo "MULTIPLICACION"
echo "====================================="
read -p "Ingrese el primer multiplo: " mul1
read -p "Ingrese el segundo multiplo: " mul2
echo "-------------------------------------"
echo "La multiplicacion de los elementos es: " $((mul1*mul2));
;;

"D") 
echo "DIVISION"
echo "====================================="
read -p "Ingrese el primer dividendo: " div1
read -p "Ingrese el segundo dividendo: " div2
echo "-------------------------------------"
echo "La division de los elementos es: " $((div1*div2));
;;

[E-Z]) echo "Valor fuera de rango";;

*) echo "Por favor solo caracteres dentro del rango [A-B]";;

esac