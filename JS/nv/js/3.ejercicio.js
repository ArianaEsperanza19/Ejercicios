'use strict';
// 3. Ejercicio: Mostrar los numeros que hay entre dos numeros introducidos por el usuario.

var num1 = parseInt(prompt('Introduce el primer número'));
var num2 = parseInt(prompt('Introduce el segundo número'));

if (isNaN(num1) || isNaN(num2)) {
  console.log('No permitidos los caracteres');
} else {
  for (let i = num1; i <= num2; i++) {
    console.log(i);
  }
}
