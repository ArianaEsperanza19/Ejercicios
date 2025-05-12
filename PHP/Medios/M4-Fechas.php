<?php
# 4. Calcular la diferencia entre dos fechas.
/*
1 - 
anno 1990
mes 2 febrero
dia 15 
2 -
anno 2000
mes 5 mayo
dia 10

2000 - 1990 = 10 annos

si es dentro del mismo anno
su mes2 < mes1
(12-mes1) + mes2 - 1
si mes2 > mes1
mes2 - mes1 - 1
5 - 2 - 1 = 2 meses

dia
diferencia = dia1 + (dias_del_mes - dia2) + dia2
si dia1 > dia2
(30-dia1) + dia2
30 - 15 + 10 = 25 dias
si dia2 > dia1


15/2/1990
10/5/2000
*/
$anno1 = 1990;
$mes1 = 2;
$dia1 = 15;
$anno2 = 2000;
$mes2 = 5;
$dia2 = 10;
// 1990 - 2000
if($anno1 == $anno2){
    # Dentro del mismo anno
    // 2 y 5
    if($mes1 > $mes2){
        $diferencia = $mes1 - $mes2 - 1;
        //echo $mes1. "+" . $mes2 . "\n";
        echo "Diferencia en meses es de ". $diferencia . " meses";
    }
    // 2 y 5
    if($mes1 < $mes2){
        $diferencia = $mes2 - $mes1 - 1;
        //echo $mes1. "+" . $mes2 . "\n";
        echo "Diferencia en meses es de ". $diferencia . " meses";
    }
    echo "\n";
    $duracion_mes = 30;
    if($mes2 == 1 || $mes2 == 3 || $mes2 == 5 || $mes2 == 7 || $mes2 == 8 || $mes2 == 10 || $mes2 == 12){
        $duracion_mes = 31;
    }
    if($mes2 == 2){
        $duracion_mes = 28;
    }
    if($dia1 < $dia2){
        $diferencia = $dia2 - $dia1 - 1;
        echo "Diferencia en dias es de ". $diferencia . " dias";
    }
    if($dia1 > $dia2){
        $diferencia = $duracion_mes - $dia1 + $dia2 - 1;
        echo "Diferencia en dias es de ". $diferencia . " dias";
    }
}else{
    #Con diferente anno
    echo "Desde ". $anno1."/" . $mes1 . "/" . $dia1 . " hasta " . $anno2 . "/" . $mes2 . "/" . $dia2 . "\n";
    if($anno1 > $anno2){
        echo "Diferencia de " . ($anno1 - $anno2) . " annos\n";
    }else{
        echo "Diferencia de " . ($anno2 - $anno1) . " annos\n";
    }
    if($mes1 < $mes2){
        $diferencia = $mes2 - $mes1 - 1;
        //echo $mes1. "+" . $mes2 . "\n";
        echo "Diferencia en meses es de ". $diferencia . " meses";
    }
    if($mes1 > $mes2){
        $diferencia = $mes1 - $mes2 - 1;
        //echo $mes1. "+" . $mes2 . "\n";
        echo "Diferencia en meses es de ". $diferencia . " meses";
    }
    echo "\n";
    $duracion_mes = 30;
    if($mes2 == 1 || $mes2 == 3 || $mes2 == 5 || $mes2 == 7 || $mes2 == 8 || $mes2 == 10 || $mes2 == 12){
        $duracion_mes = 31;
    }
    if($mes2 == 2){
        $duracion_mes = 28;
    }
    if($dia1 < $dia2){
        $diferencia = $dia2 - $dia1 - 1;
        echo "Diferencia en dias es de ". $diferencia . " dias";
    }
    if($dia1 > $dia2){
        $diferencia = $duracion_mes - $dia1 + $dia2 - 1;
        echo "Diferencia en dias es de ". $diferencia . " dias";
    }
    
}
?>