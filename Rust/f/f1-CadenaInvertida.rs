// 1. Cadena invertida
fn main() {
let cadena:&str = "hola mundo";
let len = cadena.len();
    for i in (0..len).rev() {
        println!("{}", cadena.chars().nth(i).unwrap());
    }
}
