// hola mundo con rust
fn main() {
    let _cadena: [char;10] = ['h', 'o', 'l', 'a', ' ', 'm', 'u', 'n', 'd', 'o'];
    // let hola: &str = "hola mundo";
    let letra: char = 'a';
    print!("y adios {} todos\n", letra);
    //for i in 0..cadena.len() {
    //    print!("{}", cadena[i]);
    //}
    let string: &str = "hola papuh  ";
    println!("Texto sin espacios '{}'", string.trim());
}
