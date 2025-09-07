'''
13. Comprobar si una variable esta vacía, si lo esta, rellenarla con con texto en minúsculas y mostrarlo en mayúsculas.
'''
variable = ""
if variable:
    print (variable.upper())
else:
    variable = input("Ingrese un texto: ")
    print(variable.upper())
