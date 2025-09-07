"""
10. Crear un script que reciba la nota de 15 alumnos. Mostrar cuantos han aprobado y cuantos han suspendido.

"""

aprobados = 0
reprobados = 0

for i in range(1,16):
    while True:
        nota = int(input(f"Ingrese la nota del alumno {i}: "))
        if nota >= 0 and nota <= 10:
            break
    if nota >= 6:
        aprobados += 1
    else:
        reprobados += 1

print(f"Hay {aprobados} aprobados y {reprobados} reprobados")
