#!/bin/bash
# 12. Petición HTTP
 # Utilizando un mecanismo de peticiones HTTP de tu lenguaje, realiza
 # una petición a la web que tú quieras, verifica que dicha petición
 # fue exitosa y muestra por consola el contenido de la web.
 #
 # DIFICULTAD EXTRA (opcional):
 # Utilizando la PokéAPI (https://pokeapi.co), crea un programa por
 # terminal al que le puedas solicitar información de un Pokémon concreto
 # utilizando su nombre o número.
 # - Muestra el nombre, id, peso, altura y tipo(s) del Pokémon
 # - Muestra el nombre de su cadena de evoluciones
 # - Muestra los juegos en los que aparece
 # - Controla posibles errores
#Nota, se necesita el paquete jq para poder manipular json
pokemon_id=10
datos=$(curl -s "https://pokeapi.co/api/v2/pokemon/$pokemon_id" | jq '{name: .name, abilities: .abilities, height, weight, stats,types}')
echo $datos;
