"""
9. Crear un script que pida números indefinidamente al usuario hasta introducir 111.
"""
while True:
    n = int(input("Ingrese el numero: "))
    if n == 111:
        print("Fin")
        break
    else:
        print(n)

