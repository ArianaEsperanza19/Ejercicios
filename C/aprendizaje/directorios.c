// Nombre del archivo: diccionarios.c
// Author: ArianaEsperanza19
// Fecha: 2025-05-07

#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>
#include <dirent.h>
void crear();
void borrar();
void leer();
// Crear o Borrar directorios
int main() {

    leer();
    return 0;  // Indicar que el programa terminó correctamente
}

void crear(){
    // Crear carpeta
    mkdir("temp",0700);
}

void borrar(){
    // Borrar carpeta
    rmdir("temp");
}

void leer(){
    // Leer carpeta
    DIR * folder; // Puntero a la carpeta
    struct dirent * directorio; // Puntero al contenido de la carpeta
    // dirent: Estructura que contiene los nombres de los archivos
     // Abrir la carpeta
    folder = opendir(".");
    // Imprimir los nombres de los archivos
    while((directorio = readdir(folder)) != NULL){
        printf("%s\n", directorio->d_name);
    }
    // Cerrar la carpeta
    closedir(folder);

}
