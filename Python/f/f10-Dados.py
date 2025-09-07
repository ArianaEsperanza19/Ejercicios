'''
10. Simulación de lanzamiento de dados
'''
import random

def lanzar_dados():
    dado1 = random.randint(1, 6)
    dado2 = random.randint(1, 6)
    return dado1, dado2

dados = lanzar_dados()
total = dados[ 0 ] + dados[ 1 ]
print(f"Lanzamiento de dados: {dados} -> {total}")
