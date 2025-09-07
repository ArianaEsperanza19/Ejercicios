"""
2. Escribir un script que nos muestre por pantalla todos los números pares del 1 al 120.
"""

"""
Si contador es par, su último bit (el menos significativo) es siempre 0. Al hacer contador & 1, el resultado será 0.
"""
for contador in range(1,121):
    if contador & 1 == 0:
        print(contador)
