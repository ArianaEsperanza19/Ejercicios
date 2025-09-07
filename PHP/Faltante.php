<?php

// Dado un array que contiene n números distintos en el rango [0,n], escribe una función que encuentre y devuelva el único número en el rango que está ausente del array.
// Formula = n*(n+1)/2 - sum(array)

// Encontrar el elemento faltante del 1 al 6
$arr = [1,3,4,5,6];
// n = 5


function faltante($arr)
{
    $n = count($arr) + 1;
    $sum = array_sum($arr);// Suma del array
    $gauss = $n * ($n + 1) / 2;//Suma Gauss completa de 1 a 6
    echo "Faltante: ".$gauss - $sum;
}

faltante($arr);
