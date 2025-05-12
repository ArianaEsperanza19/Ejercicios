// 2. Determina si un numero es primo
// Cuando un numero es divisible por otro que no sea el mismo o 1 no es primo.
// Si el numero es menor que dos, no puede ser primo.

#include <stdio.h>
int main() {
int num = 5;

if(num > 2){
int tope = num + 10;
    for(int i = 2; i < tope; i++){
    if(num % i == 0){
        if(i != num || i != 1){
            printf("%d No es primo\n",num);
        }else{
        printf("%d Es primo\n",num);
        }
        break;
    }
    }
}else{
    printf("No es primo");
}
return 0;
}


