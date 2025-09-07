'''
12. Ejecuta un ejecutable de una aplicación
'''
import subprocess
result = subprocess.run(["echo", "Hola desde Python"], capture_output=True, text=True)
print("Salida del programa:", result.stdout)
primo = subprocess.run(["bash", "/home/ariana/Otros/Ejercicios/Python/f/datos.sh"], capture_output=True, text=True)
print("Salida del programa:", primo.stdout)
