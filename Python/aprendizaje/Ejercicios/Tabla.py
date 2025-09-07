'''
15. Crear una lista con el contenido de esta tabla: Videojuegos de accion (GTA, COD, PUBG), aventuras (Assassin's Creed, The Last of Us, Prince of Persia) y deporte (PES, FIFA, PRO). Mostrar la información de manera ordenada en orden inverso.
'''

tabla = [
    {
        "categoria" : "Accion",
        "juegos" : ["GTA", "COD", "PUBG"],

    },
    {
        "categoria" : "Aventura",
        "juegos" : ["Assassin's Creed", "The Last of Us", "Prince of Persia"],
    },
    {
        "categoria" : "Deporte",
        "juegos" : ["PES", "FIFA", "PRO"]
    }
]

for i in reversed(tabla):
    print(i["categoria"])
    print(i["juegos"])
    print("------------------")
