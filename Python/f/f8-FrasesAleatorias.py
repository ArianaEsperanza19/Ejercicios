import random
'''
8. Generador de frases aleatorias
'''

saludo = [ "hola", "saludos", "buenos dias"]
sujeto = [ "amigo", "companero", "amiga", "hermano", "señor"]
predicado = [ "que tal?", "que pasa?", "como estas?"]
frase =  random.choice(saludo) + " " + random.choice(sujeto) + ", " + random.choice(predicado)
print(frase)
