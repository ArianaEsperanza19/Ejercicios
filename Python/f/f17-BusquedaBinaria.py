'''
17. Implementa un algoritmo de búsqueda.
'''

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
busqueda = 11
encontrado = True
# while True:
#     mitad=round( len(arr)/2 )
#     if arr[mitad] == busqueda:
#         print("Encontrado en la posición", mitad)
#         encontrado = False
#         break
#     else:
#         if arr[mitad] > busqueda:
#             arr = arr[:mitad]
#         else:
#             arr = arr[mitad:]
#
# if encontrado:
#     print("No encontrado")

inicio = 0
fin = len(arr) - 1
while inicio <= fin:
    piv = (inicio + fin) // 2
    if arr[piv] == busqueda:
        print("Encontrado en la posición", piv)
        break
    elif arr[piv] < busqueda:
        inicio = piv + 1
    elif arr[piv] > busqueda:
        fin = piv - 1
    elif inicio > len(arr) or fin < 0:
        encontrado = False
        break

if encontrado:
    print("No encontrado")
