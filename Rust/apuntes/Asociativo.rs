use std::collections::HashMap; // Paso 1: Importar HashMap
fn main(){
// Declarar un nuevo HashMap mutable.
// Especificamos que las claves serán Strings y los valores serán i32.
let mut inventario_frutas: HashMap<String, i32> = HashMap::new();
// Insertar pares clave-valor.
inventario_frutas.insert(String::from("Manzanas"), 50);
inventario_frutas.insert(String::from("Bananas"), 20);
inventario_frutas.insert(String::from("Naranjas"), 30);
inventario_frutas.insert(String::from("Peras"), 15);

let fruta_buscada = String::from("Manzanas"); if let Some(cantidad) = inventario_frutas.get(&fruta_buscada) { println!("Tenemos {} {}", cantidad, fruta_buscada); } else { println!("No tenemos {}.", fruta_buscada); }

inventario_frutas.insert(String::from("Manzanas"), 55); // Actualiza la cantidad de manzanas
inventario_frutas.insert(String::from("Uvas"), 40); // Añade una nueva fruta
println!("Inventario actualizado: {:?}", inventario_frutas);
println!("\nRecorriendo el inventario:"); for (fruta, cantidad) in &inventario_frutas { println!(" {}: {}", fruta, cantidad); }
inventario_frutas.remove(&String::from("Uvas"));
println!("\nRecorriendo el inventario:"); for (fruta, _cantidad) in &inventario_frutas { println!(" {}", fruta); }

    // Puedes comprobar si una clave existe.
    if inventario_frutas.contains_key("Bananas") {
        println!("\n¡Sí, tenemos bananas!");
    }
}
