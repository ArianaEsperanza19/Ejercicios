#!/bin/bash
# 9. Crea un generador de contraseñas seguras:
# Escribe un programa que genere contraseñas seguras aleatorias que incluyan letras mayúsculas, 
# minúsculas, números y símbolos. El programa debe permitir al usuario especificar la longitud de la 
# contraseña y el número de contraseñas que desea generar.

abc=(a b c d e f g h i j k l m n o p q r s t u v w x y z);
ABC=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z);
num=(0 1 2 3 4 5 6 7 8 9);
simb=("!" "@" "#" "$" "%" "^" "&" "*" "_" "+" "-" "=");
selector=("abc" "ABC" "num" "simb");
contrasenna='';
let contMayus=0;
let contMinus=0;
let contNum=0;
let contSim=0;
let longitud=0;
while [ $longitud -le 10 ];
do
read -p "Longitud de la contrasenya: " longitud;
if [[ $longitud -le 10 ]]; then
clear;
fi
done
for ((i=0;i<$longitud;i++))
do

random_index=$((RANDOM % ${#selector[@]}));
if [[ "${selector[$random_index]}" == 'abc' ]]; then
random_minus=$((RANDOM % ${#abc[@]}));
contrasenna+=${abc[$random_minus]};
contMinus=$((contMinus+1));
fi
if [[ "${selector[$random_index]}" == 'ABC' ]]; then
random_mayus=$((RANDOM % ${#ABC[@]}));
contrasenna+=${ABC[$random_mayus]};
contMayus=$((contMayus+1));
fi
if [[ "${selector[$random_index]}" == 'num' ]]; then
random_num=$((RANDOM % ${#num[@]}));
contrasenna+=${num[$random_num]};
contNum=$((contNum+1));
fi
if [[ "${selector[$random_index]}" == 'simb' ]]; then
random_simb=$((RANDOM % ${#simb[@]}));
contrasenna+=${simb[$random_simb]};
contSim=$((contSim+1));
fi
if [[ $contSim -ge 2 && $contNum -ge 2 && $contMayus -ge 2 && $contMinus -ge 2 && $i -ge $longitud ]]; then
break;
fi

done

echo "Contrasena generada: $contrasenna";