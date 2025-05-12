#!/bin/bash
# 4. Calculadora que encuentra la diferencia entre dos fechas.
anno1=1990;
mes1=2;
dia1=15;
anno2=2000;
mes2=5;
dia2=10;
# 15/2/1900
# 2000/5/10
if (( "$anno1" == "$anno2" )); then
    echo "Los annos son iguales";
    if (( "$mes1" < "$mes2" )); then
        echo "La diferencia entre el mes $mes1 y el mes $mes2 es $(($mes2 - $mes1 -1)) meses";
    else
        echo "La diferencia entre $mes1 y $mes2 es $(($mes1 - $mes2 -1)) meses \n";
    fi
duracion_mes=30;
if (( "$mes2" == "1" && "$mes2" == "3" && "$mes2" == "5" && "$mes2" == "7" && "$mes2" == "8" && "$mes2" == "10" )); then
    duracion_mes=31;
fi
if (( "$mes2" == "2" )); then
    duracion_mes=28;
fi

if (( "$dia1" > "$dia2" )); then
   echo "$((duracion_mes - $dia1 + $dia2)) dias"; 
else
    echo "$(($dia2 - $dia1)) dias";
fi
else
    echo "Los annos son diferentes";
    echo "La diferencia entre $anno1 y $anno2 es de $((anno2-anno1)) annos";
    if (( "$mes1" < "$mes2" )); then
        echo "$(($mes2 - $mes1 -1)) meses";
    else
        echo "$(($mes1 - $mes2 -1)) meses \n";
    fi
duracion_mes=30;
if (( "$mes2" == "1" && "$mes2" == "3" && "$mes2" == "5" && "$mes2" == "7" && "$mes2" == "8" && "$mes2" == "10" )); then
    duracion_mes=31;
fi
if (( "$mes2" == "2" )); then
    duracion_mes=28;
fi

if (( "$dia1" > "$dia2" )); then
   echo "$((duracion_mes - $dia1 + $dia2)) dias"; 
else
    echo "$(($dia2 - $dia1)) dias";
fi

fi
