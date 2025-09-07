// 4. Pedir dos números al usuario para hacer con ellos todas las operaciones matemáticas básicas y mostrar los resultados.

use std::io;

fn input () -> f64 {
    loop {
    let mut input = String::new();
    let _ = io::stdin().read_line(&mut input);
    let n = input.trim();
    match n.parse::<f64>(){
        Ok( n ) => break n,
        Err( error ) => {
            println!("Ingrese un número válido: ");
        },
    }
    }
}

fn main() {
    println!("Ingrese el primer número: ");
    let n1 = input();
    println!("Ingrese el segundo número: ");
    let n2 = input();

    println!("Suma de {} y {} es: {}", n1, n2, ( n1 + n2 ));
    println!("Resta de {} y {} es: {}", n1, n2, ( n1 - n2 ));
    println!("Multiplicación de {} y {} es: {}", n1, n2, n1 * n2);
    println!("División de {} y {} es {}", n1, n2, n1 / n2);
}
