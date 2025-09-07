// 8. ¿Cuanto es el X por ciento de X numero?

use std::io;

fn input () -> f64 {
    loop {
    let mut input = String::new();
    let _ = io::stdin().read_line(&mut input);
    let n = input.trim();
    match n.parse::<f64>(){
        Ok( n ) => break n,
        Err( .. ) => {
            println!("Ingrese un número válido:");
        },
    }
    }
}

fn main() {

    println!("Ingrese un numero: ");
    let n = input();
    println!("Ingrese el porcentaje: ");
    let p = input();

    println!("El {}% de {} es: {}", p, n, (n*(p/100.0)));

}
