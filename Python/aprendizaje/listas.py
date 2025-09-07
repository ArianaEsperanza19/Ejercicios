# Lista comun
lista = [ 1,2,3,4,5,6 ]
# Tupla
tupla = ("Rojo", "Azul", "Negro")
lista2 = list(tupla)
# Rango
annos = list(range(2000,2021))
# Lista variada
variada = [1, "Arian", 3.14, True]
# Los indices negativos se cuentan de derecha a izquierda
print(variada[-1])
# Imprimir de x a y
print(variada[1:2])
print(variada[1:])
# Agregar elemento
lista.append(7)
variada.pop(2)
print("##############Listado#################")
for i in range(len(variada)):
    print(f"{i+1}. {variada[i]}")

# Lista multidimencional

matriz = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

for i in matriz:
    for j in i:
        print(j)

# Ordenar
r = [2,4,6,1,9,5]
r.sort()
print(r)

# Invertir
r.reverse()
print(r)

# Buscar
print(2 in r);
# Buscar y devolver index
print(r.index(2))
# Contar
print(r.count(2))
