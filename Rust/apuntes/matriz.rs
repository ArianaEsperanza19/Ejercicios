fn main(){
let array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
for fila in 0..array.len() {
    for columna in 0..array[fila].len(){
        print!(" {} ", array[fila][columna]);
    }
    println!(); // Salto de línea al final de cada fila
    }

    let elemento = array[0][1]; // Accede al elemento en la fila 0, columna 1 (que es 2)
    println!("Elemento en (0,1): {}", elemento); // Salida: 2

let mut matriz_dinamica = vec![
        vec![10, 20, 30],
        vec![40, 50, 60],
    ];

matriz_dinamica.reverse();

for fila in 0..matriz_dinamica.len() {
    for columna in 0..matriz_dinamica[fila].len() {
        print!("{} ", matriz_dinamica[fila][columna]);
    }
    println!(); // Salto de línea al final de cada fila
}

// manejo seguro de acceso (preferible a 'panic!')
    if let Some(fila) = matriz_dinamica.get(0) {
        if let Some(elemento_seguro) = fila.get(1) {
            println!("elemento en (0,1) de forma segura: {}", elemento_seguro);
        }
    }
}
