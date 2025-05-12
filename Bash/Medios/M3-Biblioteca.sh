#!/bin/bash
# 5. Sistema de gestion de una biblioteca, para gestionar libros, usuarios y prestamos.
# Funciones Esenciales
# Gestión de Libros
# Añadir Libro: Permitir la entrada de nuevos libros en el sistema con detalles como título, autor, ISBN, género, etc.
# Eliminar Libro: Eliminar libros que ya no están en la colección.
# Actualizar Información del Libro: Modificar los detalles de un libro existente.
# Buscar Libro: Encontrar libros por título, autor, ISBN, género, etc.
# Listar Libros: Mostrar una lista de todos los libros disponibles.
#
# Gestión de Usuarios
# Registrar Usuario: Añadir nuevos usuarios al sistema con detalles como nombre, dirección, número de contacto, etc.
# Actualizar Información del Usuario: Modificar los detalles de un usuario existente.
# Eliminar Usuario: Eliminar usuarios que ya no están activos o registrados.
# Buscar Usuario: Encontrar usuarios por nombre, ID de usuario, etc.
#
# Préstamos y Devoluciones
# Prestar Libro: Registrar el préstamo de un libro a un usuario, incluyendo la fecha de préstamo y la fecha de devolución prevista.
# Devolver Libro: Registrar la devolución de un libro prestado.
# Listar Préstamos Actuales: Ver todos los libros que están actualmente prestados y sus fechas de devolución previstas.
# Historial de Préstamos: Ver el historial de préstamos de un usuario específico o de un libro específico.
#
# Gestión de Inventario
# Inventario de Libros: Gestionar el stock de libros, incluyendo libros dañados o perdidos.
# Inventario de Préstamos: Monitorear y gestionar el estado de los libros prestados.
#
# Notificaciones y Recordatorios
# Recordatorio de Devolución: Enviar notificaciones a los usuarios sobre la fecha de devolución próxima de sus libros prestados.
# Alertas de Multas: Notificar a los usuarios sobre multas por devoluciones tardías.
# Reportes y Análisis
# Generar Reportes: Crear reportes sobre el uso de la biblioteca, estadísticas de préstamos, libros más populares, etc.
# Análisis de Uso: Analizar los datos de uso para mejorar la gestión de la biblioteca.

# Herramientas:
# Buscar en archivo
# Borrar linea de texto en archivo
# Anadir linea de texto en archivo
# Modificar linea de texto en archivo

menuPrincipal() {
  echo "================= Menu Principal ================="
  echo "A. Gestión de Libros"
  echo "B. Gestión de Usuarios"
  echo "C. Préstamos y Devoluciones"
  echo "D. Gestión de Inventario"
  echo "E. Notificaciones y Recordatorios"
  echo "F. Reportes y Análisis"
  echo "Z. Salir"
}

menuLibros() {
  echo "================= Libros ================="
  echo "A. Agregar Libro"
  echo "B Eliminar Libro"
  echo "C. Buscar Libro"
  echo "D. Listar libros"
  read -p "Ingrese una opcion: " libropcion
  case "$libropcion" in
    "A")
      read -p "Ingrese el titulo: " titulo
      read -p "Ingrese el autor: " autor
      id=$((1 + $RANDOM % 100)) # Genera un ID aleatorio
      STRING=$id
      centinela=1
      while [[ $centinela -eq 1 ]]; do
        if grep -q "$STRING" Biblioteca/libros.txt; then
          # Código si se encuentra, volver a generar
          id=$((1 + $RANDOM % 100))
          STRING=$id
        else
          # Código si no se encuentra, rompe el bucle.
          centinela=0
        fi
      done
      ejemplar="$id - $titulo - $autor" # Crea el ejemplar
      echo "$ejemplar" >>Biblioteca/libros.txt
      ;;
    "B")
      read -p "Ingrese el ID del libro a eliminar: " id
      # A continuacion se usa una expresion regular para indicar exactamente que ejemplar se va a borrar
      grep -l "$id" Biblioteca/libros.txt | sed -ri "/\\b${id}\\b/d" Biblioteca/libros.txt
      ;;
    "C")
      read -p "Ingrese el ID del libro a buscar: " id
      # Del mismo modo se usa una expresion regular para encontrar el libro exacto
      grep -xw "$id" Biblioteca/libros.txt
      ;;
    "D")
      clear
      echo "================= Libros ================="
      cat Biblioteca/libros.txt
      ;;
    *) ;;
  esac
}

menuUsuarios() {
  echo "================= Usuarios ================="
  echo "A. Agregar Usuario"
  echo "B Eliminar Usuario"
  echo "C. Buscar Usuario"
  echo "D. Listar Usuarios"
  read -p "Ingrese una opcion: " useropcion
  case "$useropcion" in
    "A")
      read -p "Ingrese el nombre del nuevo usuario: " nombre
      read -p "Ingrese el apellido del nuevo usuario: " apellido
      id=$((1 + $RANDOM % 100)) # Generar un ID aleatorio
      STRING=$id
      centinela=1
      while [[ $centinela -eq 1 ]]; do
        if grep -q "$STRING" Biblioteca/usuarios.txt; then
          # Código si se encuentra, volver a generar
          id=$((1 + $RANDOM % 100))
        else
          # Código si no se encuentra, rompe el bucle.
          centinela=0
        fi
        impresion="$id - $nombre $apellido" # Salida de la funcion
        echo "$impresion" >>Biblioteca/usuarios.txt
      done
      ;;
    "B")
      read -p "Ingrese el ID del usuario a eliminar: " id
      grep -l "$id" Biblioteca/usuarios.txt | sed -ri "/\\b${id}\\b/d" Biblioteca/usuarios.txt
      ;;
    "C")
      read -p "Ingrese el ID del usuario a buscar: " id
      grep -xw "$id" Biblioteca/usuarios.txt
      ;;
    "D")
      clear
      echo "================= Usuarios ================="
      cat Biblioteca/usuarios.txt
      ;;
    *)
      echo "Opcion no valida"
      ;;
  esac

}

libros="Biblioteca/libros.txt"
usuarios="Biblioteca/usuarios.txt"
cd "$(dirname "$0")"
if [ -e "$libros" ]; then
  echo "El archivo $libros encontrado."
else
  touch "Biblioteca/libros.txt"
fi
if [ -e "$usuarios" ]; then
  echo "El archivo $usuarios encontrado."
else
  touch "Biblioteca/usuarios.txt"
fi

menuPrincipal
read -p "Ingrese una opcion: " opcion
clear
case "$opcion" in
  "A")
    menuLibros
    ;;
  "B")
    menuUsuarios
    ;;
esac
