'use strict';
// 5. Mostrar todos los numeros divisores de un numero introducido por pantalla.
var num = parseInt(prompt('Introduce el número', 1));
if (isNaN(num)) {
  console.log('No permitidos los caracteres');
} else {
  for (let i = 1; i <= num; i++) {
    if (num % i === 0) {
      console.log(i);
    }
  }
}
