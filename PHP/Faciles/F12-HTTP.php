<?php
# 12. Escribe un programa que solicite al usuario ingresar una URL y luego imprima la información del servidor web que proporciona la URL.
# https://pokeapi.co/api/v2/pokemon/$pokemon_id

// Inicializar cURL
$ch = curl_init();
$pokemon_id = 10;
// URL de la solicitud
$url = "https://pokeapi.co/api/v2/pokemon/$pokemon_id";

// Establecer opciones de cURL
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// Ejecutar la solicitud y obtener la respuesta
$respuesta = curl_exec($ch);
$arreglo = json_decode($respuesta, true);
// Comprobar si hubo errores
if (curl_errno($ch)) {
    echo 'Error:' . curl_error($ch);
} else {
    echo "Nombre del pokemon: " . $arreglo['name'] . "\n";
    echo "ID del pokemon: " . $arreglo['id'] . "\n";
}

// Cerrar cURL
curl_close($ch);
?>
