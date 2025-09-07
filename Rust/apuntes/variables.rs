// Variables
fn main()
{
    // Variable NO son mutables por defecto
    //let x = 5; // Agrega mut
    //x = 4;
    //println!("{}", x); // Error
    // -------------------------------------
    // Shadowing: redefining a variable
    let x = 5;
    let x = x + 1;
    println!("{}", x);

    {
        let x = x * 2;
        println!("The value of x in the inner scope is: {x}");
    }
    println!("The value of x is: {x}");
    // El Shadowing es diferente de marcar una variable como mut porque obtendremos un error de tiempo de compilación si accidentalmente intentamos volver a asignar esta variable sin usar la palabra clave let
    // Al usar let, podemos realizar algunas transformaciones en un valor, pero la variable debe ser inmutable después de que se hayan completado esas transformaciones.
    // La otra diferencia entre mut y el shadowing es que, debido a que efectivamente estamos creando una nueva variable cuando usamos la palabra clave let nuevamente, podemos cambiar el tipo de valor pero reutilizar el mismo nombre./

    let spaces = "   ";
    let spaces = spaces.len(); // Aqui cambia el tipo
    println!("{}", spaces);

    // Constantes
    const MAX_POINTS: u32 = 100_000;
    println!("{}", MAX_POINTS);
    //  Las constantes obtenidas de operaciones
    const THREE_HOURS_IN_SECONDS: u32 = 60 * 60 * 3;
    println!("{}", THREE_HOURS_IN_SECONDS);
}
