<?php
# 8. Busqueda binaria
$busqueda = 97;
$arreglo = [1, 3, 9, 15, 64, 97, 100];
$indices = round(count($arreglo) / 2);
$pivote = $indices;
$centinela = false;

if($arreglo[$indices] < $busqueda){
for ($i = $indices; $i < count($arreglo); $i++) {
    if ($arreglo[$i] == $busqueda) {
        $centinela = true;
        echo "Encontrado en la posición $i";
        break;
    }

}}else{

for ($i = 0; $i < $indices; $i++) {
    if ($arreglo[$i] == $busqueda) {
        $centinela = true;
        echo "Encontrado en la posición $i";
        break;
    }
}
}

if($centinela == false){
    echo "No se encontró el número";
}

?>
