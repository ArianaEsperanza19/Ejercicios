#include <stdio.h>
// Estructura de un lenguaje
typedef struct Lenguaje {
    char* nombre;
    int anno;
} Lenguaje;
// Metodo descripcion de Lenguaje
void descripcion(Lenguaje lenguaje) {
    printf("El lenguaje %s fue creado en el anyo %d\n", lenguaje.nombre, lenguaje.anno);
}

int main() {
    Lenguaje html;
    html.nombre = "HTML";
    html.anno = 1995;
    descripcion(html);

    return 0;
}
