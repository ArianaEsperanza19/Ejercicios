//3. Ordena una lista de numeros mediante "Ordenamiento por insercion"
#include <stdio.h>
int main(){
    int num[6] = { 2, 1, 4, 3, 9, 5 }; // El elemento a comparar comienza en la posicion 1
    int longitud = sizeof(num) / sizeof(num[0]); // Calcula el número de elementos

    // Ordena el array
    for (int i=1; i<longitud; i++){
        // Compara el elemento actual con los anteriores
        for (int j=0; j<i; j++){

        // printf("%d comparado con %d\n", num[i], num[j]);
        if(num[i] < num[j]){
            int aux = num[i];
            num[i] = num[j];
            num[j] = aux;
        }
        }
        printf("\n");
    }
    printf("El array ordenado es: [ ");
    for (int i=0; i<longitud; i++){
        printf("%d ", num[i]);
    }
    printf("]\n");
    return 0;
}

