#include <stdio.h>
#include <stdlib.h>
int main(){
// Arreglos unidimensionales
int A[5];
A[0] = 1;
A[1] = 2;
A[2] = 3;
A[3] = 4;
A[4] = 5;
A[0] = 3*2;
printf("Elemento resultante: %d", A[0]);
printf("\n");
// Arreglos bidimensionales
int B[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
int i,j = 0;
printf("Arreglo bidimensional:\n");
for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
        printf("%d ", B[i][j]);
    }
    printf("\n");
}

// Otra inicializacion
int n = 3;
int m = 3;
int C[n][m];
    return 0;
}
