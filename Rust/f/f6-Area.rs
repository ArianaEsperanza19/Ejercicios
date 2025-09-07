// 6. Calculo de area de figuras geométricas.
use std::io;
fn input() -> i32 {
    loop{
    let mut input = String::new();
    let _ = io::stdin().read_line(&mut input);
    match input.trim().parse::<i32>() {
        Ok(n) => break n,
        Err( _ ) => {
            println!("Ingrese un número válido: ");
        },
    }
    }
}

fn inputf() -> f32 {
    loop{
    let mut input = String::new();
    let _ = io::stdin().read_line(&mut input);
    match input.trim().parse::<f32>() {
        Ok(n) => break n,
        Err( _ ) => {
            println!("Ingrese un número válido: ");
        },
    }
    }
}

fn main() {
    println!("1.Triangulo");
    println!("2.Cuadrado");
    println!("3.Circulo");
    println!("Ingresa la operacion: ");
    let op:i32 = input();
    match op {
        1 => {
            println!("Ingresa la base: ");
            let b:f32 = inputf();
            println!("Ingresa la altura: ");
            let h:f32 = inputf();
            println!("El area es: {}", b*h/2.0);
        },
        2 => {
            println!("Ingresa el lado: ");
            let l:f32 = inputf();
            println!("El area es: {}", l*l);
        },
        3 => {
            println!("Ingresa el radio: ");
            let r:f32 = inputf();
            println!("El area es: {}", 3.14*r*r);

        },
        _ => {

        }

    }

}
