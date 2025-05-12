'use strict';
// 7. Mostra la tabla de multiplicar del numero introducido por el usuario.

var num = parseInt(prompt('Introduce el número: ', 1));
if (isNaN(num)) {
  console.log('No permitidos los caracteres');
} else {
  for (let i = 1; i <= 10; i++) {
    document.write(num + ' x ' + i + ' = ' + num * i + '<br>');
  }
}
