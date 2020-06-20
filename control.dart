void main() {
  
  // IF - Else

  bool acceso = false;

  if (acceso) {
    print('Tiene acceso');
  } else {
    print('No tiene acceso');
  }

  // IF - Else y Else - If
  bool contrasena = true;

  if (acceso) {
    print('Tiene acceso');
  } else if (contrasena) {
    print('Tiene contraseña');
  } else {
    print('No tiene acceso');
  }

  if (acceso || contrasena) {
    print('Tiene acceso');
  }

  bool correo = false;
  bool tel = false;

  // || el operador 'o'
  // && El operador 'y'
  if ((correo || tel) && contrasena) {
    print('Entra');
  } else {
    print('Error');
  }

  // Switch

  String nombre = 'Anderson';
  switch (nombre) {
    case 'Cristian':
      print('Es Cristian');
      break;
    case 'Sofia':
      print('Es Sofia');
      break;
    case 'Sebastian':
      print('Es Sebastian');
      break;
    case 'Henry':
      print('Es Henry');
      break;
    default:
      print('No es ninguno');
      break;
  }

  // While

  // ==       Igual
  // !=       Diferente
  // < y <=   menor y menor que
  // > y >=   mayor y mayor que
  // !        negado
  // ||       o
  // &&       y

  int i = 0;
  
  while (i <= 5) {
    print('El valor de x es: $i');
    i++;
  }
  
  // Do - While

  i = 3;

  do {
    print('DoWhile El valor de x es: $i');
    i++;
  } while (i <= 5);

  // Break si se cumple la condición sale del ciclo
  i = 0;

  do {
    print('Break El valor de x es: $i');
    i++;
    if (i == 4) {
      break;
    }
  } while (i <= 5);

  // For
  for (var index = 0; index <= 5; index++) {
    print('For El valor de index: $index');
  }
  
  // Iterar una lista

  List<dynamic> listaNum = ['Hola', 2, false, 100.45];

  for (var i = 0; i < listaNum.length; i++) {
    print('Iteracion de la lista: ${listaNum[i]}');
  }

}