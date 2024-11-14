<?php
# 5. Simula un juego de adivinanzas:
# Escribe un programa que genere un número aleatorio entre 1 y 100 y le pida al usuario que adivine el número. 
# El programa debe proporcionar pistas al usuario, como si su suposición es demasiado alta o demasiado baja, 
# hasta que adivine el número correcto.
$numero = 6;
$min = 1; $max = 10;
$entrada = -15;
while($entrada != $numero){
do{
echo "Por favor intente divinar el numero:";
$entrada = trim(fgets(STDIN));
# Si la entrada acierta el numero
if($entrada == $numero){
echo "Felicidades, adivinaste el numero\n";
break;
}
# Si introduce numeros negativos
if($entrada < 0 || $entrada > $max){
echo "Ups! Valor invalido, intenta de nuevo.\n";
break;
}
# Si la entrada es menor al numero
if($entrada < $numero){
do{
$pista = random_int($entrada,$numero);
}while($pista == $numero || $pista == $entrada);//Mientras el numero de la pista no este en el rango
echo "Numero incorrecto, Pista: ".$pista."\n";
break;
}
# Si la entrada es mayor al numero
if($entrada > $numero){
do{
$pista = random_int($numero, $entrada);
}while($pista == $numero || $pista == $entrada);//Mientras el numero de la pista no este en el rango
echo "Numero incorrecto, Pista: ".$pista."\n";
break;
}
}while($entrada <= 0 || $entrada > $max);//Mientras no se introduzca un valor valido
}# While principal
