# 18. Divide una cadena en palabras

cadena = "Esto es una cadena de prueba"
lista = []
word = ""
c = False
for palabra in cadena:
    if palabra != " ":
        word += palabra
        c = True
    else:
        lista.append(word)
        word = ""

if c:
    lista.append(word)

for w in lista:
    print(w)
