
n1 = 2
n2 = 3

# funciones

def suma(n1,n2):
    return n1 + n2

def resta(n1,n2):
    return n1 - n2

def multi(n1,n2):
    return n1 * n2

def div(n1,n2):
    return n1 / n2

def residuo(n1,n2):
    return n1 % n2

# funciones dentro de otras funciones

def calculadora(n1,n2):
    print("######CALCULADORA######")
    print("Suma: ", suma(n1,n2))
    print("Resta ", resta(n1,n2))
    print("Multiplicacion: ", multi(n1,n2))
    print("Division: ", div(n1,n2))
    print(f"Residuo: ", residuo(n1,n2))

calculadora(n1,n2)

# Parametros opcionales

dni = 12345678
nombre = "Arian"
email = "Arian@Arian"

def mostrar_datos(dni,nombre, email = "No tiene"):
    print(f"El DNI es {dni} y el nombre es {nombre}")
    if email != "No tiene":
        print(f"El email es {email}")
# El email es opcional
mostrar_datos(12345678,"Arian", email)

# Lambda

sumar = lambda n1,n2: n1 + n2

dime_year = lambda year: print(f"Estamos en el anno {year}")

dime_year(2025)
