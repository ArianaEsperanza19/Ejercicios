// 5. Simula un juego de adivinanzas.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int generarAleatorio(int min, int max) {
    return min + rand() % (max - min);
}
int main(){
int centinela = 0;
int adivinar = 5; // Numero entre 0 y 10
do{
    int num = 0;
    printf("Adivina el numero: ");
    scanf("%d", &num);
    if(num == adivinar){
        printf("Has ganado\n");
        centinela = 1;
    }else{
        printf("Has perdido\n");
    }
    if(num > adivinar){
        int pista = generarAleatorio(adivinar, num);
        while(pista == adivinar || pista == num){
            pista = generarAleatorio(adivinar, num);
        }
        printf("Pista: %d\n", pista);
    }
    if(num < adivinar){
        int pista = generarAleatorio(num, adivinar);
        while(pista == adivinar || pista == num){
            pista = generarAleatorio(num, adivinar);
        }
        printf("Pista: %d\n", pista);
    }

    }while(centinela == 0);
 }
