// Nombre del archivo: arreglos2.c
// Author: ArianaEsperanza19
// Fecha: 2025-03-24
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <stdlib.h>

struct S_alumno {
    int id;
    float * calificaciones;
};
typedef struct S_alumno alum;
int main() {
    int n = 2, nc = 3;
    alum * AA = malloc(n*sizeof(alum));

    for(int i = 0; i < n; i++){
AA[i].calificaciones = ( float * ) malloc ( nc*sizeof(float) );
    }
    AA[0].id = 1;
    AA[0].calificaciones[0] = 10;
    AA[0].calificaciones[1] = 8.2;
    AA[0].calificaciones[2] = 9.1;

    AA[1].id = 2;
    AA[1].calificaciones[0] = 9;
    AA[1].calificaciones[1] = 7.3;
    AA[1].calificaciones[2] = 8.5;
    float total = 0;
    for (int j = 0; j < n; j++) {
        printf("ID del alumno: %d\n", AA[j].id);
        for (int k = 0; k < nc; k++) {
        total += AA[j].calificaciones[k];
        }
        printf("El promedio es de %f\n", total/nc);
        total = 0;
    }
    return 0;  // Indicar que el programa terminó correctamente
}

