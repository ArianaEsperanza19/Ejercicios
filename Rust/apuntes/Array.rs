fn main() {
    let mut a: [i8; 10] = [42; 10];
    a[5] = 0;
    let primes = [2, 3, 5, 7, 11, 13, 17, 19];
    for prime in primes {
        for i in 2..prime {
            assert_ne!(prime % i, 0);
        }
    }
  println!("a: {a:?}");}
