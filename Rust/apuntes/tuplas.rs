//fn print_tuple_b(tuple: (i32, i32)) {
//    let left = tuple.0;
//    let right = tuple.1;
//    println!("left: {left}, right: {right}");
//}
fn print_tuple_a(tuple: (i32, i32)) {
    let (left, right) = tuple;
    println!("left: {left}, right: {right}");
}

fn print_tuple_b(tuple: (i32, &str, i32)) {
    let (left, middle, right) = tuple;
    let center = tuple.1;
    println!("left: {left}, middle: {middle}, right: {right}");
    println!("Cadena central: {center}");
}

fn main() {
    let tuple = (1, 2);
    let t = ( 3,"Hola mundo!",6 );
    print_tuple_b(t);
    print_tuple_a(tuple);
}
