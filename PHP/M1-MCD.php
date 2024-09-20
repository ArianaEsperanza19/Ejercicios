<?php

$n1=56; #150 #56
$n2=42; #39 #42
$resto=$n1%$n2;

function prueba($resto)
{
    $prueba1=56%$resto;
    $prueba2=42%$resto;
    if ($prueba1 == 0 && $prueba2 == 0){
        return true;
    }else{
        return false;
    }
}


while($resto!=0){
if($resto!=0){
    $prueba = prueba($resto);
    if($prueba == true){
        break;
    }
    }
$resto=$n1%$n2;
$n1=$n2;
$n2=$resto;
echo "$resto"."\n";
}

echo "El MCD es $resto"."\n";    
?>