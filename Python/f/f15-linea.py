'''
15. Buscar una subcadena dentro de un archivo y agregar una nueva linea con el texto dado.
'''

nombre_archivo = "mi_archivo.txt"
subcadena_a_buscar = "salta"
nueva_linea_a_agregar = "Esta es la nueva linea agregada"
# 1. Leer el archivo y guardar las lineas en una lista
lineas_modificadas = []
with open(nombre_archivo, 'r') as archivo:
    for linea in archivo:
        lineas_modificadas.append(linea)
        # 2. Buscar la subcadena y agregar la nueva linea
        if subcadena_a_buscar in linea:
            lineas_modificadas.append(nueva_linea_a_agregar + '\n')

# 3. Reescribir el archivo con los cambios
with open(nombre_archivo, 'w') as archivo:
    for linea in lineas_modificadas:
        archivo.write(linea)

print("El archivo ha sido actualizado exitosamente.")
