<?php
# 13. Conversor de unidades de Millas a Kilometros

echo "Ingrese la cantidad de millas a convertir: ";
$millas=trim(fgets(STDIN));
echo "La cantidad de kilometros es: " . ($millas * 1.60934)." Km\n";