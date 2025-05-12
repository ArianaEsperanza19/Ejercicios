// Nombre del archivo: recursividad.c
// Author: ArianaEsperanza19
// Fecha: 2025-05-10
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
int forRecursivo(int i);

int main() {

    int i = 0;
    forRecursivo(i);
    return 0;  // Indicar que el programa terminó correctamente
}

int forRecursivo(int i){
    if(i==10){
        return 0;
    }else{
        printf("%d\n", i);
        forRecursivo(i+1);
    }
}

