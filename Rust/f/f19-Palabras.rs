// 19. Dividir una cadena de texto en sus palabras

fn main()
{
    let texto:&str = "Texto de prueba";
    let mut lista:Vec<String> = Vec::new();
    let mut palabra = String::new();
    let mut centinela = false;
    // Interar cadena
    for caracter in texto.chars() {
        if caracter != ' ' {
            println!("{}", caracter);
            palabra.push(caracter);
            centinela = true;
        }
        else {
            lista.push(palabra.clone());
            palabra = String::new();
            centinela = false;
        }
    }
    if centinela {
        lista.push(palabra.clone());
    }

    println!("{:?}", lista);
}
