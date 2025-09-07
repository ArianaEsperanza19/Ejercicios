"""
6. Mostrar todas las tablas de multiplicar del 1 al 10.
"""
for i in range(1,11):
    print(f"Tabla del {i}")
    print("-----------------")
    for j in range(1,11):
        print(f"{i} x {j} = {i*j}")
    print("-----------------")
