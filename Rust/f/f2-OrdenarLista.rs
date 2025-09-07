// 3. Ordenar arreglo de numeros de mayor a menor.

fn quicksort(arr:Vec<i32>) {
    let piv = arr.len() / 2;
    let mut menores:Vec<i32> = Vec::new();
    let mut mayores:Vec<i32> = Vec::new();
    for i in arr.iter(){
    println!("{}", i);
        if i < &arr[piv] {
            menores.push(*i);
        }else{
            mayores.push(*i);
        }
    }

    // println!("{:?}", menores);
    // println!("{:?}", mayores);
    if menores.len() >= mayores.len() {
        return;
    }
}

fn main() {
    // Vector int
    let lista:Vec<i32> = vec![5,2,4,1,3];
    quicksort(lista);
}
