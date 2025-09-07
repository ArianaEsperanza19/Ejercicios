'''
9. Desarrolla un juego de piedra, papel o tijera
'''
import random

def computadora():
    return random.randint(1,3)

def juego(jugador, computadora):
    if jugador == computadora:
        print("Empate")
    elif jugador == 1 and computadora == 2:
        print("Jugador: Piedra\nComputadora: Papel")
        print("Gana la computadora")
    elif jugador == 1 and computadora == 3:
        print("Jugador: Piedra\nComputadora: Tijera")
        print("Gana el jugador")
    elif jugador == 2 and computadora == 1:
        print("Jugador: Papel\nComputadora: Piedra")
        print("Gana el jugador")
    elif jugador == 2 and computadora == 3:
        print("Jugador: Papel\nComputadora: Tijera")
        print("Gana la computadora")
    elif jugador == 3 and computadora == 1:
        print("Jugador: Tijera\nComputadora: Piedra")
        print("Gana la computadora")
    elif jugador == 3 and computadora == 2:
        print("Jugador: Tijera\nComputadora: Papel")
        print("Gana el jugador")

print("Juego de Piedra, Papel o Tijera")
while True:
    opcion = int( input("1. Piedra\n2. Papel\n3. Tijera\n") )
    match opcion:
        case 1:
            juego(opcion, computadora())
            break
        case 2:
            juego(opcion, computadora())
            break
        case 3:
            juego(opcion, computadora())
            break
        case _:
            print("Opcion no valida")
