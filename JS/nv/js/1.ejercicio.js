'use strict';
// 1. Ejercicio: Pedir dos numeros y decir cuales mayor, cual es menor o si son iguales.

var num1 = prompt('Introduce el primer número');
var num2 = prompt('Introduce el segundo número');

if (isNaN(num1) || isNaN(num2)) {
  console.log('No permitidos los caracteres');
} else {
  if (num1 > num2) {
    console.log(num1 + ' es mayor que ' + num2);
  } else if (num2 > num1) {
    console.log(num2 + ' es mayor que ' + num1);
  } else if (num1 < 0 || num2 < 0) {
    console.log('No permitidos los numeros negativos');
  } else {
    console.log(num1 + ' es igual que ' + num2);
  }
}
