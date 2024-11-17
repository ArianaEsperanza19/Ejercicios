<?php
# 5. Aplanar un arreglo
$arreglo = [[1,2,3], "Pedro", true, "Luis", [4,5,6], "Maria"];
$contenido_subarreglo = [];
$contenido_arreglo = [];
//print_r($arreglo);
foreach($arreglo as $elemento){
    if(is_array($elemento)){
        foreach($elemento as $subelemento){
            array_push($contenido_subarreglo, $subelemento);
        }
    }else{
        array_push($contenido_arreglo, $elemento);
    }
}
print_r(array_merge($contenido_arreglo, $contenido_subarreglo));