#include <stdio.h>
#include <stdlib.h>

// int main(){
// FILE *f; char c;
// // Leer un archivo
// f = fopen("datos.txt", "r"); // Si se usa + se crea el archivo para leer en caso de que no exista.
// if( f != NULL){
//     printf("El archivo se abrio correctamente\nAbriendo... \n");
//     while(!feof(f)){
//             c = fgetc(f);
//             printf("%c", c);
//     }
//     fclose(f);
// }else{
//     printf("error");
// }
//     return 0;
// }

int main(){
    FILE *f;
    f = fopen("datos.txt", "a"); // Si el archivo no existe se crea
    //El modo 'w' sobreescribe el archivo borrando lo que estaba antes.
    //Abrir con 'a' para escribir conservando los datos que ya esten en el archivo
    if( f == NULL ){
    printf("El archivo se abrio correctamente\nAbriendo... \n");
    return 1;
    }else{
        printf("Abierto el archivo con exito\n");
        fprintf(f, "Esto es una prueba %d\n", 21); // Escribe en el archivo
    }
    return 0;
}
