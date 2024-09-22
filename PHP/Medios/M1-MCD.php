<?php

$n1=56; #150 #56
$n2=42; #39 #42
$resto=$n1%$n2;

function prueba($resto, $n1, $n2)
{
    $prueba1=$n1%$resto;
    $prueba2=$n2%$resto;
    if ($prueba1 == 0 && $prueba2 == 0){
        return true;
    }else{
        return false;
    }
}

$num1=$n1;
$num2=$n2;
while($resto!=0){
if($resto!=0){
    $prueba = prueba($resto, $n1, $n2);
    if($prueba == true){
        break;
    }
    }
$resto=$num1%$num2;
$num1=$num2;
$num2=$resto;
echo "$resto"."\n";
}

echo "El MCD es $resto"."\n";    
?>