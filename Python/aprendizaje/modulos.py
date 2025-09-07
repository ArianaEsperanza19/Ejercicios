def holamundo(nombre):
    print(f"hola mundo para {nombre}")

def calculadora():

    n1 = int(input("Ingrese el primer numero: "))
    n2 = int(input("Ingrese el segundo numero: "))

    print("######CALCULADORA######")
    print("Suma: ", n1 + n2)
    print("Resta ", n1 - n2)
    print("Multiplicacion: ", n1 * n2)
    print("Division: ", n1/n2)
    print(f"Residuo: {n1%n2}")
