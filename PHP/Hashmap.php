<?php

// la suma del elemento 0 debe dar 7
$arr = [2, 3, 1, 5, 7];


function hashmap($arr)
{
    // Mapa con los elementos que no coinciden
    $map = [];
    // Recorremos el array
    foreach ($arr as $index => $elemento) {
        // Comprobamos si existe el complemento
        $complemento = 9 - $elemento;
        if (array_key_exists($complemento, $map)) {
            echo $elemento." + ".$complemento." = 9\n";
            break;

        }
        // Si no existe lo añadimos
        $map[$elemento] = $index;
    }

}

hashmap($arr);
