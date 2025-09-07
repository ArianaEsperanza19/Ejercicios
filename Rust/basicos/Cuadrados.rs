// 3. Escribir un script que muestre los cuadrados (numero multiplicado por si mismo) de los primeros 60 números naturales. Resolverlo con for y while

fn main (){
    for i in 1..61 {
    println!("El cuadrado de {} es {}", i, i*i);
    }
    println!("#################################");

    let mut i = 1;
    loop {
    println!("El cuadrado de {} es {}", i, i*i);
    i += 1;
    if i > 61 {
            break;
        }
    }
}
