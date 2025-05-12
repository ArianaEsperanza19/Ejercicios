#!/bin/bash
# 14. Generador de frases

Nombres=("Juan" "Pedro" "Mario");
Accion=( "come" "duerme" "trabaja" );
Predicado=("en casa" "en la montaña" "en la playa" );

echo "${Nombres[$RANDOM % ${#Nombres[@]}]} ${Accion[$RANDOM % ${#Accion[@]}]} ${Predicado[$RANDOM % ${#Predicado[@]}]}"
