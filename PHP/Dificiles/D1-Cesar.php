<?php
# Ejercicio dificil 3: Cifrado de Cesar
# Ejemplo "HOLA MUNDO" -> "LSPH QYRHS"
/*
Si es mayuscula: ctype_upper($letra)
Si es minuscula: ctype_lower($letra)
*/
$Texto = "HOLA MUnD0";
$alfabetoMINUS = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
$alfabetoMAYUS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
$numeros = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
$Clave = 4;
$indice = null;
$TextoCifrado = "";


for ($i = 0; $i < strlen($Texto); $i++) {
    if(ctype_digit($Texto[$i])){
        $indice = array_search($Texto[$i], $numeros);
        $indice = $indice + $Clave;
# Si el indice es mayor que el numero de elementos en numeros
        if($indice > count($numeros)){
            $indice = $indice - count($numeros);
            $TextoCifrado = $TextoCifrado . $numeros[$indice];
        }else{
        $TextoCifrado = $TextoCifrado . $numeros[$indice];
        }
        #echo "Es numero";

    }else{
    if(ctype_lower($Texto[$i])){
        $indice = array_search($Texto[$i], $alfabetoMINUS);
        $indice = $indice + $Clave;
        if($indice > count($alfabetoMINUS)){
            $indice = $indice - count($alfabetoMINUS);
            $TextoCifrado = $TextoCifrado . $alfabetoMINUS[$indice];
        }else{
        $TextoCifrado = $TextoCifrado . $alfabetoMINUS[$indice];
        }
        #echo "Es minuscula";
    }
    if(ctype_upper($Texto[$i])){
        $indice = array_search($Texto[$i], $alfabetoMAYUS);
        $indice = $indice + $Clave;
        if($indice > count($alfabetoMAYUS)){
            $indice = $indice - count($alfabetoMAYUS);
            $TextoCifrado = $TextoCifrado . $alfabetoMAYUS[$indice];
        }else{
        $TextoCifrado = $TextoCifrado . $alfabetoMAYUS[$indice];
        }
        #echo "Es mayuscula";
    }
    if($Texto[$i] == " "){
        $TextoCifrado = $TextoCifrado . " ";
    }
    }
}
putenv('TERM=xterm');
exec("clear"); # Borrar consola
echo "El texto cifrado es:" . $TextoCifrado;