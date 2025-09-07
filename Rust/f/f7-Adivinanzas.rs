// 7. Simula un juego de adivinanzas
use std::io;
use rand::Rng;
fn main(){
    let adiv:i32 = 7;

    loop {

        let mut n = String::new();
        println!("Introduce un número: ");
        let _ = io::stdin().read_line(&mut n);
        let r:i32 = n.trim().parse().expect("Por favor introduce un número");
        if r == adiv {
            break;
        }else if r > adiv && r != 20 {
            println!("El número es mayor");
            let mut rng = rand::thread_rng();
        let hint_val: i32 = rng.gen_range(1..=20);
            println!("Pista: {}", hint_val);
        }else if r < adiv && r != 1 {
            println!("El número es menor");
        }
    }
}
