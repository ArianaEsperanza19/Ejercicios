'use strict';
// 2. Ejercicio: Mediante un bucle realizar la suma y la media de los numeros introducidos, hasta que el usuario introduzca un numero negativo.

var num = 0;
var sum = 0;
var media = 0;
var contador = 0;
num = parseInt(prompt('introduzca un numero: '));
// Si no se convierte a numero lo tomara como string, es decir la condicion se leeria como:
// su el numero de caracteres de "num" es mayor o igual que 0.
while (num >= 0) {
  if (num < 0) {
    break;
  }
  contador += 1;
  if (num >= 0) {
    sum += num;
    num = prompt('introduzca un numero: ');
    num = parseInt(num);
  }
}

media = sum / contador;
console.log('los numeros introducidos son: ' + contador);
console.log('la suma es: ' + sum);
console.log('la media es: ' + media);
