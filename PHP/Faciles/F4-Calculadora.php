<?php

#implementar switch con opciones
#sumar, restar, multiplicar, dividir
#La opcion siempre debe ser un numero, del o contrario se pregunta de nuevo.
#Se realiza la operacion

$operacion=false;
echo "CALCULADORA
    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir
    5. Salir\n";
While($operacion != 5 && $operacion != 4 && $operacion != 3 && $operacion != 2 && $operacion != 1) {
echo "Por favor ingrese su operacion: ";
$operacion = trim(fgets(STDIN));
}


switch ($operacion) {
    case "1":
        $num1=null;
        $num2=null;
        while( !is_numeric($num1) || !is_numeric($num2) ){
            
        echo "Ingrese el primer numero: ";
        $num1 = trim(fgets(STDIN));
        echo "Ingrese el segundo numero: ";
        $num2 = trim(fgets(STDIN));
        }
        echo "La suma de los elementos es: " . ($num1 + $num2)."\n";
        break;
    case "2":
        $num1=null;
        $num2=null;
        while( !is_numeric($num1) || !is_numeric($num2) ){
        echo "Ingrese el primer numero: ";
        $num1 = trim(fgets(STDIN));
        echo "Ingrese el segundo numero: ";
        $num2 = trim(fgets(STDIN));
        }
        echo "La resta de los elementos es: " . ($num1 - $num2)."\n";
        break;
    case "3":
        $num1=null;
        $num2=null;
        while( !is_numeric($num1) || !is_numeric($num2) ){
        echo "Ingrese el primer numero: ";
        $num1 = trim(fgets(STDIN));
        echo "Ingrese el segundo numero: ";
        $num2 = trim(fgets(STDIN));
        }
        echo "La multiplicacion de los elementos es: " . ($num1 * $num2)."\n";
        break;
    case "4":
        $num1=null;
        $num2=null;
        while( !is_numeric($num1) || !is_numeric($num2) ){
        echo "Ingrese el primer numero: ";
        $num1 = trim(fgets(STDIN));
        echo "Ingrese el segundo numero: ";
        $num2 = trim(fgets(STDIN));
        }
        while ($num2 == 0) {
            echo "No se puede dividir por 0\n";
            echo "Ingrese el segundo numero: ";
            $num2 = trim(fgets(STDIN));
        }
        echo "La division de los elementos es: " . ($num1 / $num2)."\n";
        break;
    case "5":
        echo "Saliendo...\n";
        break;
    default:
        echo "Opcion no valida";
}
?>