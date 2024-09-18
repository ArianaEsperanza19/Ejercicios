#!/bin/bash
# Buscar una subcadena dentro de un archivo y agregar una nueva linea con el texto dado. 
directorio="/home/ariana/Documentos/";
archivo="pet.txt";
subcadena="Token";
nueva_linea="token1";
#Verificar si el archivo existe
if [ -e "$directorio/$archivo" ]; then
#Revisar linea por linea
while IFS= read -r line || [[ -n "$line" ]]; do
# Verificar si la subcadena se encuentra en alguna de las lineas
if echo "$line" | grep -q "$subcadena"; then
    echo "La subcadena se encontró.";
    # Reemplazar la subcadena por el texto dado
    sed -i "/$subcadena/a $nueva_linea" "$directorio/$archivo";
    # Verificar si la operación se realizó correctamente
    if [ $? -eq 0 ]; then
    echo "Se agrego nueva linea con exito";
    break;
    else
    echo "Fallo la operación";
    fi
    else 
    echo "La subcadena no se encontró.";
fi
# Continuar con la lectura del archivo
done < "$directorio/$archivo"; 
else
    echo "El archivo $archivo no existe en $directorio.";
fi

