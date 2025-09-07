// 3. Programa una calculadora basica.
use std::io; // Necesario para la entrada/salida estándar

fn input() -> i32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Por favor introduce un número");
    input.trim().parse().expect("Por favor introduce un número")
}
fn main(){
    //  Menu
    println!("1.Suma");
    println!("2.Resta");
    println!("3.Multiplicacion");
    println!("4.Division\nIntroduce el número de la operación: ");

    let mut n = String::new();
    let _ = io::stdin().read_line(&mut n);
    let op = n.trim().parse().expect("Por favor introduce un número");
    match op {
        1 => { println!("Suma\n-------------------------------");
        println!("Introduce el primer número: ");
        let s1:i32 = input();
        println!("Introduce el segundo número: ");
        let s2:i32 = input();
        println!("{} + {} es {}", s1, s2, s1+s2);
        },
        2 => { println!("Resta\n-------------------------------");
        println!("Introduce el primer número: ");
        let s1:i32 = input();
        println!("Introduce el segundo número: ");
        let s2:i32 = input();
        println!("{} - {} es {}", s1, s2, s1-s2);
        },
        3 => { println!("Multiplicacion\n-------------------------------");
        println!("Introduce el primer número: ");
        let m1:i32 = input();
        println!("Introduce el segundo número: ");
        let m2:i32 = input();
        println!("{} * {} es {}", m1, m2, m1*m2);
        },
        4 => { println!("Division\n-------------------------------");
        println!("Introduce el primer número: ");
        let d1:i32 = input();
        println!("Introduce el segundo número: ");
        let d2:i32 = input();
        println!("{} / {} es {}", d1, d2, d1/d2);
        },
        _ => println!("Operación no reconocida"),
    }



}
