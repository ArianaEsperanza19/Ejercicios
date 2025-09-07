fn main() {
    //let a = 'A';
    //let b = 'B';
    //let mut r: &char = &a;
    //println!("r: {}", *r);
    //r = &b;
    //println!("r: {}", *r);

    let a = 12;
    let b = 15;
    let mut r = &a;
    println!("r: {}", *r);
    let bind = &(&a + &b);
    r = bind;
    println!("r: {}", *r);
}
