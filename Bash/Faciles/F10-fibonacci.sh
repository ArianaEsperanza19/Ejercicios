# 10. Realiza una secuencia de los números de Fibonacci
#!/bin/bash
# Realizar una secuencia de los numeros de fibonacci
# Cada numero sera la sumatoria de los dos anteriores
# La secuencia continuara hasta el numero que el usuario introduzca
read -p "Por favor introduzca el numero de repeticiones deseado: " numero
# a b c
# a = 1
# b = 1
# c = a + b
# a = c
a=0
b=1
echo $a
for ((i = 0; i < $numero; i++)); do
	c=$((a + b))
	echo $c
	b=$a
	a=$c
done
