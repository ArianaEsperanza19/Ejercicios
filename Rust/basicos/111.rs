// 9. Crear un script que pida números indefinidamente al usuario hasta introducir 111.

use std::io;

fn main(){

    loop {
        println!("Ingrese un número: ");
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        match n.parse::<i32>(){
            Ok( n ) => {
            if n == 111 {
            println!("Fin");
            break;
            }
            },
            Err( .. ) => println!("Ingrese un número válido: "),
        }
    }
}
