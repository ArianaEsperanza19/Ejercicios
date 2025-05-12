<?php
# 6. Desarrolla un juego de piedra, papel o tijera:
# Escribe un programa que simule el juego de piedra, papel o tijera. El programa debe permitir al usuario 
# jugar contra la computadora y mostrar el resultado de cada ronda.

function computadora(){
    $computador = rand(0,2);
    return $computador;
}
function ganador($jugador, $computador, $opciones){
    $jugador = $jugador - 1;
    if($opciones[$jugador] == $opciones[$computador]){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Empate\n";

    }else if($opciones[$jugador] == 'piedra' && $opciones[$computador] == 'papel'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana el computadora\n";

    }else if($opciones[$jugador] == 'piedra' && $opciones[$computador] == 'tijera'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana el jugador\n";

    }else if($opciones[$jugador] == 'tijera' && $opciones[$computador] == 'papel'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana el jugador\n";
    }else if($opciones[$jugador] == 'tijera' && $opciones[$computador] == 'piedra'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana la computadora\n";
    }else if($opciones[$jugador] == 'papel' && $opciones[$computador] == 'tijera'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana la computadora\n";
    }else if($opciones[$jugador] == 'papel' && $opciones[$computador] == 'piedra'){
        echo "Computadora eligio ".$opciones[$computador]."!\n";
        echo "Gana el jugador\n";
    }
}

$opcion = -10;
$opciones = array("piedra", "papel", "tijera");
echo "1. Piedra\n2. Papel\n3. Tijera\n";
while ($opcion > 2 ||  $opcion < 0) {
    echo "Elige una opción: ";
    $opcion = trim(fgets(STDIN));
    if ($opcion > 3 || $opcion <= 0) {
        echo "Opción no válida\n";
    }
    if($opcion == 1){
        echo "Elegiste ".$opciones[0]."!\n";
        $computadora = computadora();
        ganador($opcion, $computadora, $opciones);
        break;
    }
    if ($opcion == 2){
        echo "Elegiste ".$opciones[1]."!\n";
        $computadora = computadora();
        ganador($opcion, $computadora, $opciones);
        break;
    }
    if ($opcion == 3){
        echo "Elegiste ".$opciones[2]."\n";
        $computadora = computadora();
        ganador($opcion, $computadora, $opciones);
        break;
    }

}

