<?php
# 7. Generador de Contraseñas

$mayus = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
$minus = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
$numeros = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
$simbolos = ["!", "@", "#", "$", "%", "^", "&", "*",".","_"];
$elementos = ["mayus", "minus", "numeros", "simbolos"];
$longitud = 10;
$contrasenya = false;

function filtro($clave){
    $mayusculas = preg_match_all("/[A-Z]/", $clave);
    $minusculas = preg_match_all("/[a-z]/", $clave);
    $numeros = preg_match_all("/[0-9]/", $clave);
    $simbolos = preg_match_all("/[!@#$%^&*]/", $clave);
    if ($mayusculas >= 2 && $minusculas >= 2 && $numeros >= 1 && $simbolos >= 1) {
        return true;
    }else{
        return false;
    }
}

while (!$contrasenya){

for ($i = 0; $i < $longitud; $i++) {
    $elem = array_rand($elementos);
    //echo $elementos[$elem];
    if( $elem == 0 ){
        $caracter = array_rand($mayus);
        $contrasenya = $contrasenya . $mayus[$caracter];
    }
    if( $elem == 1 ){
        $caracter = array_rand($minus);
        $contrasenya = $contrasenya . $minus[$caracter];
    }
    if( $elem == 2 ){    
        $caracter = array_rand($numeros);
        $contrasenya = $contrasenya . $numeros[$caracter];
    }
    if( $elem == 3 ){    
        $caracter = array_rand($simbolos);
        $contrasenya = $contrasenya . $simbolos[$caracter];
    }
}

$filtrar = filtro($contrasenya);
if ($filtrar) {
    break;
}
}
echo "Su contrasenya segura es: ".$contrasenya;