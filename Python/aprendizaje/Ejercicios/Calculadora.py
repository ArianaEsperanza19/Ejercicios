"""
4. Pedir dos números al usuario para hacer con ellos todas las operaciones matemáticas básicas y mostrar los resultados.
"""

n1 = int(input("Ingrese el primer numero: "))
n2 = int(input("Ingrese el segundo numero: "))

print("######CALCULADORA######")
print("Suma: ", n1 + n2)
print("Resta ", n1 - n2)
print("Multiplicacion: ", n1 * n2)
print("Division: ", n1/n2)
print(f"Residuo: {n1%n2}")
