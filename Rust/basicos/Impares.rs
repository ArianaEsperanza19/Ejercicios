// 7. Mostrar todos los números impares entre dos números introducidos por el usuario.

use std::io;

fn input() -> i32 {
    loop {
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        match n.parse::<i32>()
        {
            Ok(n) => break n,
            Err(e) => println!("Error: {}", e)
        }
    }
}

fn main() {
    println!("Ingrese un primer número: ");
    let n1 = input();
    println!("Ingrese un segundo número: ");
    let n2 = input();

    println!("######################################");
    for i in n1..=n2 {
        if i % 2 != 0 {
            println!("{}", i);
        }
    }

}
