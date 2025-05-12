#include <stdio.h>
#include <stdlib.h>
struct S_fecha{
    int dia;
    int mes;
    int anno;
    char *nmes;
};
typedef struct S_fecha fecha;
int main(){
//struct S_fecha fecha;
fecha f;
f.dia = 20;
f.mes = 12;
f.anno = 2025;
f.nmes = (char*)malloc(9*sizeof(char));
f.nmes = "Diciembre";
printf("Es %s %d/%d/%d", f.nmes, f.dia, f.mes, f.anno);
return 0;
}
