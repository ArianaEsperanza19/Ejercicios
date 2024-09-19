#!/bin/bash
# 8. Desarrolla un juego de piedra, papel o tijera:
# Escribe un programa que simule el juego de piedra, papel o tijera. El programa debe permitir al usuario 
# jugar contra la computadora y mostrar el resultado de cada ronda.

mano=( "piedra" "papel" "tijera" );

generador (){
    mano_pc=$((0 + RANDOM % 3));
}
arbitro (){
    echo "La computadora ha elegido $2.";
    if [[ $1 == $2 ]]; then
        echo "Empate";
    elif [[ $1 == "piedra" && $2 == "tijera" ]]; then
        echo "Gana el usuario!";
    elif [[ $1 == "piedra" && $2 == "papel" ]]; then
        echo "Gana la computadora!";
    elif [[ $1 == "tijera" && $2 == "papel" ]]; then
        echo "Gana el usuario!";
    elif [[ $1 == "tijera" && $2 == "piedra" ]]; then
        echo "Gana la computadora!";
    elif [[ $1 == "papel" && $2 == "piedra" ]]; then
        echo "Gana el usuario!";
    elif [[ $1 == "papel" && $2 == "tijera" ]]; then
        echo "Gana la computadora!";
    fi
}



read -p "Ingrese una opcion [0-3]: " opcion
case $opcion in

"0") 
echo "Has elegido ${mano[0]}."
generador
arbitro "${mano[0]}" "${mano[$mano_pc]}"
;;

"1") 
echo "Has elegido ${mano[1]}."
generador
arbitro "${mano[1]}" "${mano[$mano_pc]}"
;;

"2") echo "Has elegido ${mano[2]}."
generador
arbitro "${mano[2]}" "${mano[$mano_pc]}"
;;

[0-3]) echo "Valor fuera de rango.";;

*) echo "Por favor solo caracteres dentro del rango [0-2]";;

esac
