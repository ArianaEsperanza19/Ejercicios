"""
7. Mostrar todos los números impares entre dos números introducidos por el usuario.
"""
n1 = int(input("Ingrese el primer numero: "))
n2 = int(input("Ingrese el segundo numero: "))

if n1 < n2:
    for i in range(n1,n2+1):
        if i & 1 != 0:
            print(i)
else:
    print("Error, el primer numero debe ser menor que el segundo")


