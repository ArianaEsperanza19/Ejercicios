#!/bin/bash
# 15. Crea un programa que reciba por teclado el kanji que deseas memorizar.
# Las palabras clave de la frase memotecmica para recordarlo.
# Por ultimo la historia heisig que quieres traducir.
# El resultado debe ser el input para ChatGPT
read -p "Ingresa el kanji que deseas memorizar: " kanji
read -p "Ingresa el significado del kanji $kanji: " significado
read -p "Ingresa las palabras clave (separadas por comas) de la frase memotecmica para recordarlo: " clave
read -p "Ingresa la historia heisig que quieres traducir: " historia
clear
echo "========================================================================================================"
echo "Dame una frase de memotecmia para este kanji $kanji basado en su significado '$significado' y sus componentes [$clave].
Tambien traduce la siguiente historia Heisig: $historia"
echo "========================================================================================================"