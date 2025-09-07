// 14. Crear una lista con el contenido de esta tabla: Videojuegos de accion (GTA, COD, PUBG), aventuras (Assassin's Creed, The Last of Us, Prince of Persia) y deporte (PES, FIFA, PRO). Mostrar la información de manera ordenada en orden inverso.

fn main() {

    let accion = vec!["GTA", "COD", "PUBG"];
    let aventuras = vec!["Assassin's Creed", "The Last of Us", "Prince of Persia"];
    let deporte = vec!["PES", "FIFA", "PRO"];
    let juegos: Vec<Vec<&str>> = vec![accion, aventuras, deporte];

    for juego in juegos.iter().rev() {
        for juego in juego.iter().rev() {
            println!("{}", juego);
        }
    }
}
