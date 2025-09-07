

fn main() {

    let number = 1;

    match number {
        1 => {
            println!("El primer dia de la semana es el lunes");
            println!("{} + {} es 2", number, number);
        }
        2 | 3 => println!("Dos o tres"),
        4..=6 => println!("Entre cuatro y seis (inclusive)"), // Rangos numéricos
        _ => println!("Otro número"),
    }
}
