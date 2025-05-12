// 4. Implementa una calculadora basica.

#include <stdio.h>

int suma(int, int);
int resta(int, int);
int multi(int, int);
float div(float, float);

int main(){
    int op = 0;
    int valido = 0;
    do{

printf("Calculadora\n");
printf("1. Suma\n");
printf("2. Resta\n");
printf("3. Multiplicacion\n");
printf("4. Division\n");
printf("5. Salir\n");
printf("Seleccione una opcion: ");
scanf("%d", &op);
    }while(op <= 0 || op > 5);
switch(op){
    case 1:
        do{
        printf("Introduzca el primer numero: ");
        int num1;
        // Si no se introduce un numero valido
        if( scanf("%d", &num1) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            while (getchar() != '\n');
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("Introduzca el segundo numero: ");
        int num2;
        if( scanf("%d", &num2) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            while (getchar() != '\n'); // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("El resultado es: %d\n", suma(num1, num2));
        valido = 1;

        }while(valido == 0);
        break;
    case 2:
        do{
        printf("Introduzca el primer numero: ");
        int num1;
        // Si no se introduce un numero valido
        if( scanf("%d", &num1) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            while (getchar() != '\n');
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("Introduzca el segundo numero: ");
        int num2;
        if( scanf("%d", &num2) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            while (getchar() != '\n'); // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("El resultado es: %d\n", suma(num1, num2));
        valido = 1;

        }while(valido == 0);
        break;
    case 3:
        do{
        printf("Introduzca el primer numero: ");
        int num1;
        // Si no se introduce un numero valido
        if( scanf("%d", &num1) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            while (getchar() != '\n');
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("Introduzca el segundo numero: ");
        int num2;
        if( scanf("%d", &num2) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            while (getchar() != '\n'); // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("El resultado es: %d\n", multi(num1, num2));
        valido = 1;

        }while(valido == 0);
        break;
    case 4:
        do{
        printf("Introduzca el primer numero: ");
        float num1;
        // Si no se introduce un numero valido
        if( scanf("%f", &num1) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            while (getchar() != '\n');
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("Introduzca el segundo numero: ");
        float num2;
        if( scanf("%f", &num2) != 1 ){
            valido = 1;
            printf("Error: Debe introducir un número válido.\n");
            while (getchar() != '\n'); // Limpiar el buffer de entrada <button class="citation-flag" data-index="5">
            op = 0; // Asegurarse de que el bucle continúe
            continue;
        }
        printf("El resultado es: %f\n", div(num1, num2));
        valido = 1;

        }while(valido == 0);
        break;
    case 5:
        printf("Saliendo...\n");
        break;
}
    return 0;
}

// Funciones
int suma(int a, int b){
    return a + b;
}

int resta(int a, int b){
    return a - b;
}
int multi(int a, int b){
    return a * b;
}
float div(float a, float b){
    return a / b;
}
