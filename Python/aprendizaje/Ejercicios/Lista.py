'''
11. Crear una lista con ocho numeros enteros:
- Recorrerla y mostrarla.
- Mostrar su longitud
- Ordenarla y mostrarla.
- Convertirla en un string
- Buscar un elemento dentro de la lista, en base a lo que el usuario pida por teclado.
'''

lista = [ 2, 3, 7, 9, 5, 8, 10, 1 ]

print("Recorriendo la lista")
for i in lista:
    print(i)
print("####################################")
print("Ordenando la lista")
print(sorted(lista))
print("####################################")

busqueda = int(input("Que numero desea buscar en la lista original?: "))

if busqueda in lista:
    index = lista.index(busqueda)
    print(f"El numero {busqueda} se encuentra en la lista en la posicion {index}")
else:
    print(f"El numero {busqueda} no se encuentra en la lista")

temp = ""
for i in lista:
    temp += str(f"{i} ")
print("La lista convertida en string es:",temp)

print("La longitud de la lista es:",len(lista))
