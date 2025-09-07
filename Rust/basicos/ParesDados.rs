// 5. Imprimir todos los números entre dos números dados por el usuario.

use std::io;

fn input() -> i32 {
    loop {
    let mut input = String::new();
    println!("Introduce el primer numero: ");
    let _ = io::stdin().read_line(&mut input);
    let n = input.trim();
    match n.parse::<i32>()
    {
        Ok(n) => break n,
        Err(e) => println!("Error: {}", e),
    }
    }
}

fn main() {
    let n1 = input();
    let n2 = input();

    for i in n1..=n2 {
        println!("{}", i);
    }
}
