'''
7. Simula un juego de adivinanzas
'''
import random

adiv = random.randint(1,20)
while True:
    num = int(input("Adivina el numero:"))
    print(adiv)
    if num == adiv:
        print("Ganaste")
        break
    elif num < adiv:
        print("Tu numero es menor")
        pista = random.randint(num,adiv)
        while pista == adiv or pista == num:
            pista = random.randint(num,adiv)
        print("Pista: {}", pista)
    else:
        print("Tu numero es mayor")
        pista = random.randint(adiv,num)
        while pista == adiv or pista == num:
            pista = random.randint(adiv,num)
        print("Pista: {}", pista)
