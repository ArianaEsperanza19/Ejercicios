'''
4. Implementa una calculadora básica
'''
def suma(a, b):
    return int(a) + int(b)

def resta(a, b):
    return int(a) - int(b)

def multiplicacion(a, b):
    return int(a) * int(b)

def division(a, b):
    if int(b) == 0:
        return "No se puede dividir por 0"
    return int(a) / int(b)

op = int( input("Ingrese el primer número: ") )

match op:
    case 1:
        print("Suma\n-------------------------------")
        s1 = input("Introduce el primer número: ")
        s2 = input("Introduce el segundo número: ")
        print(suma(s1, s2))
    case 2:
        print("Resta\n-------------------------------")
        r1 = input("Introduce el primer número: ")
        r2 = input("Introduce el segundo número: ")
        print(resta(r1, r2))
    case 3:
        print("Multiplicacion\n-------------------------------")
        m1 = input("Introduce el primer número: ")
        m2 = input("Introduce el segundo número: ")
        print(multiplicacion(m1, m2))
    case 4:
        print("Division\n-------------------------------")
        d1 = input("Introduce el primer número: ")
        d2 = input("Introduce el segundo número: ")
        print(division(d1, d2))
