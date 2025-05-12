#include <stdio.h>

void puntero(int * pb);

int main(){
// variable
int a = 20;

// puntero a la variable 'a' llamado 'pa'
//int * pa = &a;
// Imprime la direccion del puntero
printf("Valor original: %d\n", a);
puntero(&a);
printf("Valor modificado: %d\n", a);
return 0;
}

void puntero(int * pb){
 // Cambia el valor del puntero recibido
* pb -= 5;
}
