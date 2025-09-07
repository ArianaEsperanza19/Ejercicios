use std::io;
use rand::Rng;
//use std::cmp::Ordering;

fn main(){
    let adiv:i32 = rand::random_range(1..20);

    loop {
        let mut n = String::new();
        println!("Introduce un número: ");
        let _ = io::stdin().read_line(&mut n);
        let r:i32 = n.trim().parse().expect("Por favor introduce un número");
         if r == adiv {
            println!("Adivinaste!");
             break;
         }else if r > adiv && r <= 20 {
             println!("Tu número es mayor");
             let mut rng = rand::rng();
             let hint_val: i32 = loop {
                 let hint_val: i32 = rng.random_range(adiv..r);
                 if hint_val != adiv && hint_val != r {
                     break hint_val
                 }
             };

             println!("Pista: {}", hint_val);
         }else if r < adiv && r >= 0 {
             println!("Tu número es menor");
             let mut rng = rand::rng();
             let hint_val: i32 = loop {
                 let hint_val: i32 = rng.random_range(r..adiv);
                 if hint_val != adiv && hint_val != r {
                     break hint_val
                 }
             };
             println!("Pista: {}", hint_val);
         }
        //match r.cmp(&adiv) {
        //    Ordering::Less => println!("Mas grande"),
        //    Ordering::Greater => println!("Mas pequeño"),
        //    Ordering::Equal => break,
        //}
    }
        println!("Fin!");
}
