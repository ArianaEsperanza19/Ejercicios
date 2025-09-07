// 1. Crear una lista con ocho números enteros.
// - [x] recorrerla y mostrarla. Ordenarla y mostrarla.
// - [x] Mostrar su longitud. Convertirla en un string.
// - [ ] Buscar un elemento dentro de la lista, en base a lo que el usuario pida por teclado.

use std::io;

fn input () -> i32 {
    loop {
    let mut input = String::new();
    let _ = io::stdin().read_line(&mut input); // <- Recibe los datos
    let n = input.trim(); // <- Los limpia
    match n.parse::<i32>() // <- Los convierte al tipo necesario
    {
    // Comprueba los errores
        Ok( n ) => break n,
        Err( _error ) => {
            println!("Ingrese un número válido: ");
        },
    }
    }
}

fn main(){
    // Lista desordenada
    let enteros : [i32;8] = [ 2, 3, 6, 1, 8, 5, 4, 7 ];
    println!("Los enteros son: {:?}", enteros);
    // Ordenarla
    // Convertir a vector y ordenar
    let mut enteros_ordenados = enteros.to_vec(); enteros_ordenados.sort();
    println!("Los enteros ordenados son: ");
    for i in enteros_ordenados{
        println!("{}", i);
    }
    // Longitud
    println!("La longitud de la lista es: {}", enteros.len());
    // Convertir a string

    let mut string = String::new();
    for i in enteros{
        let enteros_string = i.to_string();
        // Agregar a string
        string.push_str(" ");
        string.push_str(&enteros_string);
    }

    println!("El string es: {}", string);
    // Buscar
    println!("Ingrese el número a buscar: ");
    let buscar = input();
    let busqueda = enteros.iter().find(|&&num| num == buscar);
    match busqueda {
        Some(valor) => println!("Encontrado el número: {}", valor),
        None => println!("El número {} no fue encontrado.", buscar),
    }

}
