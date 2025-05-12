'use strict';
// 4. Mostrar todos los numeros impares entre dos numeros introducidos por teclado.

var num1 = parseInt(prompt('Introduce el primer número'));
var num2 = parseInt(prompt('Introduce el segundo número'));

if (isNaN(num1) || isNaN(num2)) {
  console.log('No permitidos los caracteres');
} else {
  for (let i = num1; i < num2; i++) {
    if (i % 2 !== 0) {
      console.log(i + ' es impar');
    }
  }
}
