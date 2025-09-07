'''
12. Crea un script que agregue valores a una lista, mientras su longitud sea menor a 120, y luego mostrarla.
'''

coleccion = []

while len(coleccion) < 120:
    coleccion.append(input(f"Elemento {len(coleccion)+1} -> Ingrese un numero: "))

print(coleccion)
