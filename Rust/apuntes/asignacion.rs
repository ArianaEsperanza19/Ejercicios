// Nombre: asignacion.rs
// Autor: Ariana Uribe
// Descripción:

fn main()
{
    let mut s = String::from("hola");
    println!("{s} mundo!");
    s = String::from("Adios"); // reasignacion
    println!("{s} mundo!");

    let mut text:&str = "hola";
    text = "Hola"; // modificacion del contenido
    print!("{text} mundo!");
}
