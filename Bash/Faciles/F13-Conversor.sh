#!/bin/bash
# 13. Conversor de unidades, de kilometros a millas
echo "Ingrese los kilometros a convertir en millas";
read -p "Kilometros: " kilometros;
millas=$(echo "$kilometros * 0.621371" | bc -l)
echo "Millas: $millas millas";

