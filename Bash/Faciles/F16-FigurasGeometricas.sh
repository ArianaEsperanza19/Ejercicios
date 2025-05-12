#!/bin/bash
# 16. Simulador de figuras geométricas
echo "Calculemos el area de un triangulo";

read -p "Ingrese la base del triangulo: " base;
read -p "Ingrese la altura del triangulo: " altura;

echo "El area del triangulo es: " $(echo "$base*$altura*0.5" | bc -l);