//  12. Crea un script que agregue valores a una lista, mientras su longitud sea menor a 120, y luego mostrarla.

use std::io;
fn input() -> i32 {
    loop {
        let mut input = String::new();
        let _ = io::stdin().read_line(&mut input);
        let n = input.trim();
        match n.parse::<i32>(){
            Ok(n) => {
                    break n;
            }
            Err(e) => println!("Error: {}", e)
        }
    }
}

fn main()
{
  let mut lista:Vec<i32> = vec![];
  for _i in 0..120
  {
    println!("Ingrese un número: ");
    let dato = input();
    lista.push(dato);
  }
  println!("{:?}", lista);
}
