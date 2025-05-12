'use strict';
// 6. Mostrar los numeros pares e impares entre los numeros ingresados por teclado. Si la entrada no es valida, volver a pedirla.

do {
  var num1 = parseInt(prompt('Introduce el primer número'));
  var num2 = parseInt(prompt('Introduce el segundo número'));
} while (isNaN(num1) || isNaN(num2));
for (let i = num1; i <= num2; i++) {
  if (i % 2 === 0) {
    console.log(i + ' es par');
  } else {
    console.log(i + ' es impar');
  }
}
