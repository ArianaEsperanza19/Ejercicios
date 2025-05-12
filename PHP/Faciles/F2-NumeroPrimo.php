<?php
# 7 es un numero primo
# 8 no es un numero primo
$numero=7;
$prueba=50;
$resultado=1;//Si el resultado permanece en 1 el numero es primo

//Si el numero es menor que dos NO puede ser primo.
if($numero>2){
    $j=1;
    $division=0;
    for($i=0;$i<=$prueba;$i++){
        #Verificar la division y el residuo
        $division=$numero%$j;
        #echo $numero."%".$j." Residuo=$division\n";
        if($division==0){
            # Cuando un numero es divisible por otro que no sea el mismo o 1 no es primo
            if($j!=1 && $j!=$numero){
                $resultado=0;# No es primo
                break;
            }
        }
        $j++;
    }
    if($resultado==1){
        echo "El numero $numero es primo";
    }
    if($resultado==0){
        echo "El numero $numero no es primo";
    }
}else{
    echo "El numero $numero no es primo";
}
