"""
8. ¿Cuanto es el X por ciento de X numero?
"""

n1 = int(input("Ingrese el numero: "))
n2 = int(input("¿Que porcentaje quiere sacar?: "))

if n2 > 0:
    print(f"El {n2}% de {n1} es: ", n1*(n2/100))
else:
    print("Error, el porcentaje debe ser mayor a 0")

