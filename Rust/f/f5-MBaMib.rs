// 5. Conversor de unidades de MB a Mib.

use std::io;
fn main() {
    println!("Conversor de unidades de MB a Mib.");
    let mb: f64 = loop {
    println!("Ingrese la cantidad de MB: ");
    let mut input = String::new();
    let _ = io::stdin()
    .read_line(&mut input);
    let _mb: f64 = match input.trim().parse::<f64>() {
        Ok(mb_valor) => break mb_valor,
        Err(_) => {
             println!("Entrada inválida. Por favor, ingrese un número.");
             continue;
        }
    };
    };
    let resul:f64 = ( mb*1000000.0 )/1048576.0;
    println!("{resul}")
}
