<?php

function escapar($texto)
{
    # patron regex de caracteres especiales
    $patron = '/[^\w\s]/';
    $salida = "";
    for ($i = 0; $i < strlen($texto); $i++) {
        if (preg_match($patron, $texto[$i])) {
            $salida = $salida . "\\" .$texto[$i];
        } else {
            $salida = $salida . $texto[$i];
        }
    }
    return $salida;
}
// Hola mundo
$texto = escapar('$Hola mundo');
echo "%s/". $texto."/Hola mundo/g";
