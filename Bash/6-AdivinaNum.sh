#!/bin/bash
# 6. Simula un juego de adivinanzas:
# Escribe un programa que genere un número aleatorio entre 1 y 100 y le pida al usuario que adivine el número. 
# El programa debe proporcionar pistas al usuario, como si su suposición es demasiado alta o demasiado baja, 
# hasta que adivine el número correcto.

# Crear arreglo con 10 numeros, si el usuario da un numero muy alto o muy bajo, debe proporcionar
# Un numero entre el elemento otorgado y el numero real.

# Funcion para crear una pista
    # La funcion pista recibe dos parametros, el primero es el numero del usuario y el segundo es el numero de la adivinanza.
    # La funcion devuelve un numero entre el elemento otorgado y el numero real.
    # Si el usuario da un numero muy alto o muy bajo, la funcion proporciona un numero entre el elemento otorgado y el numero real.
    # La funcion utiliza el numero aleatorio $RANDOM para generar el numero de la pista.
pista () {
    # 1 - recibe el numero del usuario
    # 2 - recibe el numero de la adivinanza
    numero_pista=0;
    if (( $centinela == 0 ));then
    while (( numero_pista != $1 && numero_pista != $2 )); do
    numero_pista=$(($1 + $RANDOM % $2));
    done
    fi

    if (( $centinela == 1 ));then
    while (( numero_pista != $1 && numero_pista != $2 )); do
    numero_pista=$(($2 + $RANDOM % $1));
    done
    fi
}
# Rango del numero de la adivinanza
numero_random=$((1 + RANDOM % 10));
numero_user=0;
while (( $numero_random != $numero_user )); do
read -p "Adivine el numero: " numero_user;
#cho "numero de la adivinanza $numero_random";
    if (( $numero_user < $numero_random)); then
        echo "El numero es demasiado bajo";
        centinela=0;
        pista $numero_user $numero_random
        echo "Pista: $numero_pista";
    fi #Si es menor
    if (( $numero_user > $numero_random)); then
        centinela=1;
        pista $numero_user $numero_random
        echo "Pista: $numero_pista";
        echo "El numero es demasiado alto";
    fi #Si es mayor
    if (( $numero_user == $numero_random )); then
        echo "Felicidades, adivinaste el numero";
        break;
    fi #Si es correcto
done
