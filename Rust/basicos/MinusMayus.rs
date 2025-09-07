// 13. Comprobar si una variable esta vacía, si lo esta, rellenarla con con texto en minúsculas y mostrarlo en mayúsculas.

use std::io;

fn input() -> String {
    loop {
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        break n.to_string();
    }
}
fn main()
{
    let mut palabra:String = String::new();
    let palabra2:&str = "Texto";

    // Comprobar si tiene datos
    if palabra.is_empty() {
        println!("Variable vacia!");
        println!("Ingrese una palabra: ");
        palabra = input();
        palabra = palabra.to_lowercase();
        println!("Texto en mayusculas: {}", palabra.to_uppercase());
    }else {
        println!("Variable no vacia!");
    }

}
