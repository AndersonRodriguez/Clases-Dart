void main() {
  
  // Tipos de Variables

  int myInt = -3;
  myInt = 4;

  double myDouble = 3.0;

  String myString = 'Hola';
  String myString2 = "Mundo";

  bool myBool = true;

  int myInt2;   // Si no asigno valor toma por defecto null

  // print(myInt2);

  //Concatenación

  String concatenacion = myString + ' ' + myString2;

  // print(concatenacion);

  String nombre = 'Anderson';
  String apellido = 'Rodriguez';

  String nombreCompleto = 'Nombre: $nombre Apellido: $apellido';  // Para insertar variables en un string con $

  // print(nombreCompleto);

  var myVar = 3;  // Se infiere el valor

  dynamic myDynamic = 3;  // Dynamic puede cambiar con el tiempo
  myDynamic = false;

  num myNum = 3;  // Todo tipo de número
  myNum = 2.3;

  // Conversiones

  // Número a String
  int a = 45;
  String intToString = a.toString();    // Para convertir de número a String toString()

  // print(intToString);
  
  // String a numero
  String edad = '18';
  int stringToInt = int.parse(edad);  // Para convertir de String a número int.parse double.parse, es necesario que el string sea un número

  // Listas
  List<int> myLista = [1, 2, 3, 4];
  List<dynamic> myLista2 = [1, false, 3, 'Nombre'];
  var myLista3 = [1, true, ''];
  myLista3.add(4);

  // Acceder a un valor de la lista se hace por la posición en la que esta
  // print(myLista3[3]);
  // print(myLista3.length);

  // Map
  Map<String, String> myMap = {
    'nombre': 'Anderson',
    'apellido': 'Rodriguez',
    'edad': '24'
  };
  myMap['direccion'] = 'Carrera';

  // Para acceder al valor del map se usa la key con la que se nombro
  print(myMap['direccion']);

}