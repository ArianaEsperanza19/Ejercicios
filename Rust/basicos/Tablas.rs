// 6. Mostrar todas las tablas de multiplicar del 1 al 10.
fn main(){
    println!("Tablas de multiplicar del 1 al 10");
    println!("##################################");
    for i in 1..=10 {
    println!("Tabla del {}", i);
    println!("----------------------------------");
        for j in 1..=10 {
            println!{"{} * {} = {}", i, j, (i*j)};
        }
        println!("##################################");
    }
}
