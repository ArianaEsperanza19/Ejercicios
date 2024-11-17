<?php
# 16. Figuras geometricas
echo "Simulador de figuras geometricas\n";
echo "Ingrese la base del triangulo: ";
$base = trim(fgets(STDIN));
echo "Ingrese la altura del triangulo: ";
$altura = trim(fgets(STDIN));
echo "El area del triangulo es: " . ($base * $altura * 0.5) . "\n";