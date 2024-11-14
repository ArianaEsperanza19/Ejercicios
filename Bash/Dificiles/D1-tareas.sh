# 1. Crea un sistema de gestión de tareas:
#!/bin/bash
# Escribe un programa que permita al usuario agregar, eliminar y marcar como completadas tareas pendientes. 
# El programa debe poder almacenar las tareas en un archivo o base de datos y recuperarlas al iniciar el programa.
directorio="TareasArc";
archivo_usuarios="usuarios.txt";
archivo_tareas_pendientes="tareasPendientes.txt";
archivo_tareas_completadas="tareasCompletadas.txt";
# Función para generar un ID aleatorio y verificar su existencia
generar_id_unico() {
    local directorio=$1;
    local archivo=$2;
    id_aleatorio='';

    while true; do
        # Generar un ID aleatorio
        numero_random=$((0 + $RANDOM % 100));
        id_aleatorio="$numero_random";

        # Verificar si el ID existe en algún archivo .txt en el directorio
        if ! grep -q "$id_aleatorio" "$directorio"/"$archivo" 2>/dev/null; then
            break
        fi
    done
}

Agregar_tarea(){
    # Agregar una nueva tarea
    # Formato ID | NombreDeLaTarea | Usuario | Estado
    read -p "Ingrese una nueva tarea: " tarea
    read -p "Ingrese el nombre del usuario: " usuario
    echo "$id_aleatorio | $tarea | $usuario | pendiente" >> "$directorio/$archivo_tareas_pendientes";
}

marcar_como_completada(){ 
    # Marcar una tarea como completada
    local id;
    read -p "Ingrese el ID de la tarea que desea marcar como completada: " id
    # Buscar el ID en el tareasPendientes.txt
    if grep "$id" "$directorio/$archivo_tareas_pendientes"; then
    pendiente=$(grep "$id" "$directorio/$archivo_tareas_pendientes");
    echo "$pendiente" >> "$directorio/$archivo_tareas_completadas";
    grep -l "$pendiente" "$directorio/$archivo_tareas_completadas" | xargs sed -i "s/pendiente/completado/g";
    sed -i.bak "/$pendiente/d" "$directorio/$archivo_tareas_pendientes";

    fi
    # Reemplazar el estado pendiente por completada
    # Borrar la tarea de tareasPendientes.txt
    # Agregar la tarea a tareasCompletadas.txt
}

# Verificar si el archivo o base de datos existe
if  [ -e "$directorio/$archivo_tareas_pendientes" ] && [ -e "$directorio/$archivo_tareas_completadas" ]; then
    # Mostrar el menú de opciones
    opcion='';
    echo "A-Agrega una nueva tarea";
    echo "B-Marca una tarea como completada";
    echo "C-Ver tareas pendientes";
    echo "D-Ver tareas completadas";
    echo "E-Eliminar registro de todas las tareas completadas";
    read -p "Ingrese una opcion [A-F]: " opcion
    case $opcion in

    "A")
    generar_id_unico "$directorio" "$archivo_tareas_pendientes";
    Agregar_tarea;;

    "B")marcar_como_completada;;

    "C") echo "Ver tareas pendientes"
    cat "$directorio/$archivo_tareas_pendientes";;

    "D") echo "Ver tareas completadas"
    cat "$directorio/$archivo_tareas_completadas";;

    "E") echo "Eliminar todas las tareas completadas"
    truncate -s 0 "$directorio/$archivo_tareas_completadas";;

    [E-Z]) echo "Valor fuera de rango";;

    *) echo "Por favor solo caracteres dentro del rango [A-F]";;

esac


else
# Si no existe, crearlo.
    echo "Los archivos no existen en ./$directorio/";
# Crear archivo o base de datos
    touch "$directorio/$archivo_usuarios";
    touch "$directorio/$archivo_tareas_pendientes";
    touch "$directorio/$archivo_tareas_completadas";
    if (($? == 0)); then
        echo "archivos creados con exito";
        else 
        echo "Fallo la operación";
    fi
fi
