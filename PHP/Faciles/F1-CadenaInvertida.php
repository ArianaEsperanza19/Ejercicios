<?php

// Invierte una cadena
$cadena = "Hola mundo!";
$nuevaCadena = [];
// Solucion con unshift
for ($i = 0;$i < strlen($cadena);$i++) {
    array_unshift($nuevaCadena, $cadena[$i]);
}
$nuevaCadena = implode($nuevaCadena);
echo "La cadena invertida es: $nuevaCadena\n";
echo "======================================\n";
// Solucion concatenando
$invertida = '';
for ($i = 0;$i < strlen($cadena);$i++) {
    $invertida = $cadena[$i].$invertida;
}
echo "La cadena invertida es: $invertida\n";
