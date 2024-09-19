# 2. Configurar sudoers, para colocar la pantalla de carga y hacer sudoer a un usuario 
#!/bin/bash
directorio="/home/ariana/Documentos/"; #Directorio del archivo
archivo="pet.txt"; #Nombre del archivo

#Agregar sudoer
user="ariana";
ALL="ALL=(ALL:ALL) ALL";
root="root    ALL=(ALL:ALL) ALL";
nuevo_sudoer="$user    $ALL";
#Agregar pantalla de carga
env_old="Defaults        env_reset";
env_new="Defaults        env_reset,pwfeedback";

#Verificar si el archivo existe
if [ -e "$directorio/$archivo" ]; then
#Revisar linea por linea
while IFS= read -r line || [[ -n "$line" ]]; do
# Verificar si la subcadena se encuentra en alguna de las lineas
if echo "$line" | grep -q "$root"; then
    echo "La linea del usuario sudoer se encontró.";
    # Reemplazar la subcadena por el texto dado
    sed -i "/$root/a $nuevo_sudoer" "$directorio/$archivo";
    # Verificar si la operación se realizó correctamente
    if [ $? -eq 0 ]; then
    echo "Se agrego nuevo usuario sudoer con exito";
    break;
    else
    echo "Fallo la operación";
    fi
    else 
    echo "La linea de usuarios sudoers no se encontró.";
fi

if [ "$line" == "$env_old" ]; then
    # Reemplazar la subcadena por el texto dado
    sed -i "s/$env_old/$env_new/g" "$directorio/$archivo"
    if [ $? -eq 0 ]; then
    echo "Se modifico la linea de env_reset con exito.";
    break;
    else
    echo "Fallo la operación";
    fi
fi


# Continuar con la lectura del archivo
done < "$directorio/$archivo"; 
else
    echo "El archivo $archivo no existe en $directorio.";
fi