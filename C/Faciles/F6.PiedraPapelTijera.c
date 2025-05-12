// 6. Desarrolla un juego de piedra, papel o tijera.
#include <stdio.h>
#include <stdlib.h>
int evaluacion(int jugador, int computadora);

int main(){

    int correcto = 1;
    int p = 0;
    printf("Menu de juego\n");
    printf("1. Piedra\n2. Papel\n3. Tijera\n");
    printf("Elige una opcion: ");
    scanf("%d", &p);
    switch (p) {
        case 1:
            printf("Piedra\n");
            evaluacion(correcto,p);
            break;
        case 2:
            printf("Papel\n");
            evaluacion(correcto,p);
            break;
        case 3:
            printf("Tijera\n");
            evaluacion(correcto,p);
            break;
        default:
            printf("Opcion fuera de rango\n");
            break;
    }
    return 0;

}

int evaluacion(int jugador, int computadora){
    const char *mano[] = {"Piedra", "Papel", "Tijera"};
    int cantidad = sizeof(mano) / sizeof(mano[0]); // Tamaño del arreglo
    printf("%d y %d\n", jugador, computadora);
    const char pc = *mano[computadora];
    const char jg = *mano[jugador];
    printf("%c vs %d\n", pc, jg);
    // if(pc == jg){
    //     printf("Empate\n");
    // }
}
