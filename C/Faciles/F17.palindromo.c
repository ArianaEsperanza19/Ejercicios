// Nombre del archivo: Palindromo.c
// Author: ArianaEsperanza19
// Fecha: 2025-01-08
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <string.h>  // Incluir la biblioteca estándar de cadenas
#include <ctype.h>  // Incluir la biblioteca estándar de funciones de caracteres

int main() {
    char cadena[30] = "Anita lava la tina";// Es un Palindromo
    //char cadena[] = "Hola mundo"; // No es un palindromo
    char cadena2[30] = "";
    int largo = strlen(cadena);

    // Invertir cadena
    for (int i = largo - 1; i >= 0; i--) {
        strncat(cadena2, &cadena[i], 1);
    }
    printf("La cadena invertida es: %s\n", cadena2);

    // Convertir a minusculas
    for (int i = 0; i < largo; i++) {
        cadena2[i] = tolower(cadena2[i]);
        cadena[i] = tolower(cadena[i]);
    }

    //Eliminar espacios en las cadenas
    char cse[30] = "";
    char cse2[30] = "";
    for (int i = 0; i < largo; i++) {
        if (cadena[i] != ' '){
            strncat(cse, &cadena[i], 1);
        }
        if(cadena2[i] != ' '){
            strncat(cse2, &cadena2[i], 1);
        }
    }

    printf("La longitud de cse: %lu\n", strlen(cse));// %lu para long unsigned
    printf("La longitud de cse2: %lu\n", strlen(cse2));

    if( strcmp(cse,cse2) == 0 ){
        printf("Es un palindromo\n");
    }else{
        printf("No es un palindromo\n");
    }
    return 0;
}

