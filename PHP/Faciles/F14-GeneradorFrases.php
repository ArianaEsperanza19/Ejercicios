<?php
$nombres = ["Juan", "Pedro", "Mario"];
$accion = ["come", "duerme", "trabaja"];
$predicado = ["en casa", "en la montaña", "en la playa"];
echo $nombres[rand(0,2)] . " " . $accion[rand(0,2)] . " " . $predicado[rand(0,2)];
?>
