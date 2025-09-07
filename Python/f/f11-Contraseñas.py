'''
11. Crea un generador de contraseñas seguras
'''

import random

mayus = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
minus = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" ]
num = [ "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" ]
esp = [ "!", "@", "#", "$", "%", "^", "&", "*", ".", "_" ]
caracteres = [mayus, minus, num, esp]

longitud = 15
passw = ""

for i in range(longitud):
    random_index = random.randint(0, 3)
    passw += random.choice(caracteres[random_index])

print(passw)

