<?php
# 15. Dados
echo "Simulador de dados\n";
echo "-----------------\n";
echo "Ingrese la cantidad de dados para lanzar: ";
$cantidad_dados = trim(fgets(STDIN));
$caras = [1, 2, 3, 4, 5, 6];
$dado = 0;
$resultado = 0;
for ($i = 1; $i <= $cantidad_dados; $i++) {
    $dado = $caras[rand(0, 5)];
    echo "Dado $i: $dado\n";
    $resultado += $dado;
}
echo "El resultado es: $resultado\n";