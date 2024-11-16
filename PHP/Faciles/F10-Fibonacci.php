<?php
# 10. Fibonacci
# Escriba un programa que imprima los 10 primeros números de la serie de Fibonacci.
# a -> 1
# b -> 1
# c -> 2
# ------
# a -> 2
# b -> 1
# c -> 3
# Secuencia = 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
$numero = 10;
$a = 1;
$b = 1;
for ($i = 0; $i < $numero; $i++) {
    echo $a . "\n";
    $c = $a + $b;
    $b = $a;
    $a = $c;
}
