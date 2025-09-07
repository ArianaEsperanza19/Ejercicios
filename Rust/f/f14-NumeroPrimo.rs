// 14. Determinar si un numero es primo.

fn main() {

    let numero:i32 = 7;
    let prueba:i32 = 15;
    let mut resultado:bool = true;

    // Si el numero es menor que dos no es primo
    if numero >= 2 {
        let mut division:i32;
        for i in 1..prueba {
            division = numero % i;
            println!("{} / {} = {}", numero, i, division);
            if division == 0 && i != 1 && i != numero {
                resultado = false;
                break;
            }
        }

    let anuncio:&str = if resultado == true { "es" } else { "NO es" };
        if resultado == true {
            println!("El numero {} {} primo", numero, anuncio);
        } else {
            println!("El numero {} {} es primo", numero, anuncio);
        }
    }

}
