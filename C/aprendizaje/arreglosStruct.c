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
fecha fechas[20];
fechas[0].dia = 13;
fechas[0].mes = 11;
fechas[0].anno = 2001;
fechas[0].nmes = (char*)malloc(20*sizeof(char));
fechas[0].nmes = "Noviembre";
printf("Es %s %d/%d/%d", fechas[0].nmes, fechas[0].dia, fechas[0].mes, fechas[0].anno);
return 0;
}
