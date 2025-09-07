'''
6. Calculo de area de figuras geométricas.
'''

import math

while True:
    print("1. Triangulo\n2. Cuadrado\n3. Circulo\n")
    op = int(input("Ingrese la figura que desea calcular: "))
    match op:
        case 1:
            base = int(input("Ingrese la base del triangulo: "))
            altura = int(input("Ingrese la altura del triangulo: "))
            print("El area del triangulo es: " + str(base*altura*0.5))
            break
        case 2:
            lado = int(input("Ingrese el lado del cuadrado: "))
            print("El area del cuadrado es: " + str(lado*lado))
            break
        case 3:
            radio = int(input("Ingrese el radio del circulo: "))
            print("El area del circulo es: " + str(math.pi*radio*radio))
            break
        case _:
            break




