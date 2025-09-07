// 10. Crear un script que reciba la nota de 15 alumnos. Mostrar cuantos han aprobado y cuantos han suspendido.

use std::io;

fn input() -> i32 {
    loop {
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        match n.parse::<i32>(){
            Ok(n) => {
                if n >= 0 && n <= 10 {
                    break n;
                }else {
                    println!("Ingrese una calificación dentro del rango: ");
                }
            }
            Err(e) => println!("Error: {}", e)
        }
    }
}

fn main() {
    let mut aprobados:i32 = 0;
    let mut reprobados:i32 = 0;

    for i in 1..=15 {
        println!("Ingrese la calificación del alumno {}: ", i);
        let calificacion:i32 = input();
        if calificacion >= 6 {
            aprobados += 1;
        }else{
            reprobados += 1;
        }
    }
    println!("Aprobados: {}", aprobados);
    println!("Reprobados: {}", reprobados);
}
