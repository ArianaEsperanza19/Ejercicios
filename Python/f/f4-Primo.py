'''
14. Determina si un numero es primo.
7 es primo
8 no es primo
'''
import math

n = 7
r = math.sqrt(n)
r = round(r)
primo = True
for i in range(1,r):
    if ( n%i ) == 0 and i != n and i !=1:
        print("No es primo", f"{n} % {i} = ", n%i)
        primo = False
        break
if primo:
    print(f"{n} Es primo")

