#!/bin/bash
# 3. Cifrado César: 
# Variables "alfabetoMinus" que contiene el alfabeto en minusculas dentro de un arreglo?
Texto="HOLA MUnD0";
Clave=4;
alfabetoMayus=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
alfabetoMinus=(a b c d e f g h i j k l m n o p q r s t u v w x y z);
numeros=(0 1 2 3 4 5 6 7 8 9);
cifrado="";
indice=0;

for ((i=0; i<${#Texto}; i++))
do

# SI ES NUMERO
if [[ ${Texto:i:1} =~ [0-9] ]]; then
num=$((${Texto:i:1})); # Indice del numero
# Buscar indice del numero y calcular el numero del cifrado
for ((j=0; j<${#numeros[*]}; j++))
do
if [[ $num -eq ${numeros[j]} ]]; then
indice=$((j+Clave));
cifrado=${cifrado}${numeros[$indice]};
break;
fi # If de conteo
done # For de conteo
fi # If de numero

# SI ES MINUSCULA
if [[ ${Texto:i:1} =~ ^[a-z]+$ ]]; then
# Buscar indice del caracter y calcular el caracter del cifrado
for ((j=0; j<${#alfabetoMinus[*]}; j++))
do
if [[ ${alfabetoMinus[j]} == ${Texto:i:1} ]]; then
indice=$((j+Clave));
cifrado=${cifrado}${alfabetoMinus[$indice]};
break;
fi  # If de conteo
done # For de conteo
fi # If de minus

# SI ES MAYUSCULA
if [[ ${Texto:i:1} =~ ^[A-Z]+$ ]]; then
# Buscar indice del caracter y calcular el caracter del cifrado
for ((j=0; j<${#alfabetoMayus[*]}; j++))
do
if [[ ${alfabetoMayus[j]} == ${Texto:i:1} ]]; then
indice=$((j+Clave));
cifrado=${cifrado}${alfabetoMayus[$indice]};
break;
fi  # If de conteo
done # For de conteo
fi # If de mayus

# Agregar espacios
if [[ ${Texto:i:1} == " " ]]; then
cifrado=${cifrado}" ";
fi  # If de espacio

done # For de recorrido
clear
echo "El texto cifrado es: $cifrado"