<?php

# 8. Implemente el algoritmo Quicksort en la siguiente lista [5, 2, 4, 6, 1, 3]

$arr = [5, 2, 4, 6, 1, 3];

function quickSort($arr)
{
    if (count($arr) <= 1) {
        return $arr;
    }
    $pivote = $arr[0];  // Selecciona el primer elemento como pivote
    $menores = [];
    $mayores = [];
    foreach ($arr as $n) {
        if ($n < $pivote) {
            $menores[] = $n;
            echo $n ." < " . $pivote ."\n";
        } elseif ($n == $pivote) {
            continue;
        } elseif ($n > $pivote) {
            $mayores[] = $n;
            echo $n ." > " . $pivote ."\n";
        }

    }

    return array_merge(quickSort($menores), [$pivote], quickSort($mayores));
}


print_r(quickSort($arr));
