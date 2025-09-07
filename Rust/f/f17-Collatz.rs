// 17. Implemente la secuencia de Collatz

fn main(){
    // Numero positivo
    let mut n: u32 = 6;
    println!("La secuencia de Collatz");
    println!("{}",n);
loop {
    // La sencuencia en reversa termina cuando el n es 1
    if n == 1 {
        break
    }
    n = if n % 2 == 0 { n / 2 } else { 3 * n + 1 };
    println!("{}",n);

}}
