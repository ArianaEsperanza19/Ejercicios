// 4. Conversor de unidades, de km a millas.
use std::io;
fn input() -> f64 {
 loop {
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        match n.parse::<f64>(){
            Ok(n) => break n,
            Err(_) => println!("Introduzca un número válido"),
        }
    }
}
fn main() {
    println!("Introduzca la cantidad de kilómetros: ");
    let km: f64 = input();
    let m: f64 = km * 0.621371;
    println!("{} kilómetros son {} millas", km, m);
}
