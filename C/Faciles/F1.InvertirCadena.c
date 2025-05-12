// Nombre del archivo: InvertirCadena.c
// Author: ArianaEsperanza19
// Fecha: 2024-12-22
#include <stdio.h>  // Incluir la biblioteca estándar de entrada/salida
#include <string.h>  // Incluir la biblioteca de cadenas

int main() {
//    treesitter/highlighter: Error executing lua: /usr/share/nvim/runtime/lua/vim/treesitter/query.lua:557:
    char *cadena = "Hola, mundo!";  // Cadena de ejemplo
printf("Cadena original: %s\n", cadena);
    int longitud = strlen(cadena);  // Obtener la longitud de la cadena
    printf("Cadena invertida: ");
    for  (int i = longitud; i >= 0; i--) {
        printf("%c", cadena[i]);
    }
    printf("\n");
    return 0;  // Indicar que el programa terminó correctamente
}

