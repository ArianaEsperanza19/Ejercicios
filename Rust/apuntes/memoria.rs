fn main(){

    let mut s = String::from("hola ");
    let ref1 = &s;
    let ref3 = &s;
    let ref2 = &mut s;
println!("{} {} {}", ref1, ref2, ref3);
}

fn toma_propiedad (cadena: &mut String) -> &String {
    *cadena = String::from("adios ");
    cadena.push_str("mundo");
    cadena
}
