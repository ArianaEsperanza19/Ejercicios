// Nombre del archivo: Bsecuencial.c
// Author: ArianaEsperanza19
// Fecha: 2025-05-10
// 18. Busqueda secuencial
#include <stdio.h>

int main(){
    int vector[10] = {1,2,3,4,5,6,7,8,9,0};
    int num = 5;
    for (int i = 0; i < 10; i++) {
        if (vector[i] == num) {
            printf("El numero %d se encuentra en la posicion %d\n", num, i);
            break;
        }else{
            printf("%d no es el numero buscado\n", vector[i]);
        }
    }
}
