// hola mundo con rust

fn main() {

    let cadena: [char;10] = ['h', 'o', 'l', 'a', ' ', 'm', 'u', 'n', 'd', 'o'];
    let hola: &str = "hola mundo";
    let letra: char = 'a';
    println!("{} y {}", hola, "buenas noches");
    print!("y adios {} todos", letra);
    //for i in 0..cadena.len() {
    //    print!("{}", cadena[i]);
    //}
}
