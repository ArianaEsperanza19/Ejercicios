<?php
// 6. Dado dos arrays de enteros, encuentra el mayor elemento común en ambos arrays.
// Dados dos arreglos
$B = [3, 5, 7, 8, 10];
$A = [7, 5, 10, 9];
// Arreglo de elementos en comun
$compartido = [];
// Encontrar el mas largo
if(count($A) > count($B)) {
    // Elegimos A
    foreach ($A as $i) {
        foreach ($B as $j) {
            if($i == $j) {
                // Elemento compartido encontrado y agregado
                array_push($compartido, $i);
            }
        }
    }
}else{
    // Elegimos B
    foreach ($B as $i) {
        foreach ($A as $j) {
            if($i == $j) {
                // Elemento compartido encontrado y agregado
                array_push($compartido, $i);
            }
        }
    }
}
$ultimo = count($compartido) - 1;
var_dump($compartido[$ultimo]);
?>
