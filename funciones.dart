import 'dart:io';

// Funcion con parametros de entrada y un valor de retorno
String transforma(String palabra, bool mayus, int numExclama) {
  if (mayus) {
    palabra = palabra.toUpperCase();
  }

  palabra += '!' * numExclama;

  return palabra;
}

// Funcion con parametros opcionales []
String transforma1(String palabra, [bool mayus = true, int numExclama]) {
  if (mayus) {
    palabra = palabra.toUpperCase();
  }

  if (numExclama != null) {
    palabra += '!' * numExclama;
  }

  return palabra;
}

// Funciones con parametros nombrados {}
String transforma2(String palabra, {bool mayus = true, int numExclama}) {
  if (mayus) {
    palabra = palabra.toUpperCase();
  }

  if (numExclama != null) {
    palabra += '!' * numExclama;
  }

  return palabra;
}

// Funciones flecha
var funcionTransforma = (double base) => base * 2;

void main() {
  
  // llamamos a una funcion
  var palabraTransformada = transforma('Esta es ', false, 5);
  print(palabraTransformada);

  String palabra2 = transforma('una palabra', true, 2);
  print(palabra2);
  
  // Llamamos una funcion con parametros opcionales, no es necesario enviarlos pero 
  // Si tenemos que comprobar que no sea null en la funcion 
  var palabraTransforma1 = transforma1('Hola', true);
  print(palabraTransforma1);

  // Funcion con parametros nombrados, el primer parametro que es el texto esta por posición
  var palabraTransforma2 = transforma2('Transforma una palabra', mayus: true, numExclama: 4);
  print(palabraTransforma2);

  // Recibe lo que se escribe desde la consola, retorna siempre un string
  dynamic input = stdin.readLineSync();   

  print(input.runtimeType);   // Sabemos que tipo de variable es

  // Saber y comparar el tipo de variable
  if (input.runtimeType == 'String') {

  }

  if (input is String) {
    
  }

  // Llamar a una funcion flecha
  var alcuadrado = funcionTransforma(double.parse(input));
  print(alcuadrado);
}
