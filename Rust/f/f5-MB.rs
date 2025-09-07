/*
5. Conversor de unidades de MB a Mib
MB = 1000000 bytes
MiB = 1048576 bytes
*/

fn main() {
    println!("1. MB a MiB");
    println!("2. MiB a MB");
    println!("Introduce el número de la operación: ");
    let mut input = String::new();
    let _ = std::io::stdin().read_line(&mut input);
    let op: i32 = input.trim().parse().expect("Por favor introduce un número.");

    match op {
        1 => {
        println!("Introduce los MB: ");
        let mut input = String::new();
        let _ = std::io::stdin().read_line(&mut input);
        let mb: f64 = input.trim().parse().expect("Por favor introduce un número.");
        let mib: f64 = ( mb * 1000000.0 ) / 1048576.0;
        println!("{} MB son {} MiB", mb, mib);

        }
        2 => {
        println!("Introduce los MiB: ");
        let mut input = String::new();
        let _ = std::io::stdin().read_line(&mut input);
        let mib: f64 = input.trim().parse().expect("Por favor introduce un número.");
        let mb: f64 = (mib * 1048576.0) / 1000000.0;
        println!("{} MiB son {} MB", mib, mb);
        }
        _ => println!("Operación no reconocida"),
    }


}
