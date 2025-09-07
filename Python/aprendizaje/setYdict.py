UnSet = {
    "Arian",
    "Victor",
    "Manolo",
    "Francisco"
}

UnSet.add("Luis")
UnSet.remove("Victor")
print(UnSet)

# Diccionario
diccionario = {
    "Arian" : "Estudiante",
    "Victor" : "Estudiante",
    "Manolo" : "Estudiante",
    "Francisco" : "Profesor"
}

print("Arian es un: ", diccionario["Arian"])

# Diccionario multi dimencional

diccionario2 = {
    "Estudiante" : {
        "Arian" : "Estudiante",
        "Victor" : "Estudiante",
        "Manolo" : "Estudiante"
    },
    "Profesor" : {
        "Francisco" : "Profesor"
    }
}

print(diccionario2["Profesor"][ "Francisco" ])

asociativo = [
    { "color" : "Azul" },
    { "color" : "Rojo" },
    { "color" : "Verde" }
]

print(asociativo[0]["color"])
