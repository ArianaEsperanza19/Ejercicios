#!/bin/bash
# 11. Crea un sistema de gestión de agenda
# - Debes implementar funcionalidades de búsqueda, inserción, actualización y eliminación de contactos.
# - Cada contacto debe tener un nombre y un número de teléfono.
# - El programa solicita en primer lugar cuál es la operación que se quiere realizar, y a continuación
#   los datos necesarios para llevarla a cabo.
# - El programa no puede dejar introducir números de teléfono no númericos y con más de 11 dígitos.
#   (o el número de dígitos que quieras)
# - También se debe proponer una operación de finalización del programa.


menu () {
    echo "================= Agenda =================";
    echo "A. Nuevo contacto";
    echo "B. Ver contactos";
    echo "C. Borrar contacto";
    echo "D. Borrar todo";
}

archivo="agenda.txt";
cd "$(dirname "$0")";
if [ -e "$archivo" ]; then
    echo "El archivo $archivo existe."
else
    touch "agenda.txt";
fi

opcion=''
menu
read -p "Ingrese una opcion: " opcion;
clear
case $opcion in

"A") echo "Nuevo contacto"
read -p "Ingrese nombre: " nombre;
read -p "Ingrese apellido: " apellido;
numero="";
read -p "Ingrese numero: " numero;
num_cadena=${#numero};
while [[ $num_cadena -le 10 ]];
do
read -p "Ingrese numero: " numero;
num_cadena=${#numero};
done
id=$((1 + $RANDOM % 100));

STRING=$id
centinela=1;
while  [[ $centinela -eq 1 ]];
do
if grep -q "$STRING" agenda.txt; then
    # Código si se encuentra
    id=$((1 + $RANDOM % 100));
    STRING=$id;
else
    # Código si no se encuentra, rompe el bucle.
    centinela=0;
fi
done
input_text="$id $nombre $apellido $numero";
echo $input_text >> $archivo;
clear;
menu;
read -p "Ingrese una opcion: " opcion;;

"B") echo "================= Lista de contactos =================";
while IFS= read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < agenda.txt;
;;

"C") echo "================= Borrar contacto =================";
while IFS= read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < agenda.txt;
read -p "Id del contacto que desea borrar: " id;
#buscar y eliminar linea
busqueda=$id
sed -i "/$busqueda/d" agenda.txt
#regresar al menu
clear;
menu;
read -p "Ingrese una opcion: " opcion;;

"D")
rm agenda.txt
touch agenda.txt;;

[E-Z]) echo "Valor fuera de rango";;

*) echo "Por favor solo caracteres dentro del rango [A-B]";;

esac
