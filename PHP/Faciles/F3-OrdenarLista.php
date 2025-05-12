<?php
$lista= [5,2,4,1,3];
# 5, 2, 4, 1, 3
# 5, 4, 2, 1, 3
# 5, 4, 2, 3, 1
# 5, 4, 3, 2, 1 
$lista_comparador = [];
$comparador=0;
$temp=[];
$centinela=0;
$control=false;
$while=true;
while($while){

    for($i=0;$i<count($lista);$i++){
        $comparador=$i+1;
        #echo "Comparando comparador $i con $comparador \n";
        if($lista[$i] > $lista[$comparador]){
            $control=true;
            $temp= $lista[$i];
            $lista[$i]= $lista[$comparador];
            $lista[$comparador]= $temp;
        }
        $centinela=$comparador+1;

        if($centinela == count($lista)){
            break;
        }
    }

    if($control==false){
        $while=false;
    }

    $control=false;
}
foreach($lista as $value){
    echo "$value \n";
}