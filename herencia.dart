import 'manzana.dart';

// Clase Melon, hereda de Fruta
class Melon extends Fruta {
  // Constructor vacio, pero llama al constructor del padre con super y pasa el parametro 'Melon'
  Melon() : super('Melon');

  // Sobrescribimos el get femenina 
  @override
  bool get femenina => false;
  
  // Sobrescribimos el metodo come y llamamos al metodo come del padre con super
  @override
  come() {
    print('Primero pele el melon');
    super.come();     // Metodo del padre
  }

}

void main() {
  /*  Como el objeto Fruta es Abstract no se puede declarar ese objeto, solo se puede heredar
  var manzana = Fruta('Manzana');
  manzana.come();

  var melon = Fruta('Melon');
  melon.come();
  */

  // Creamos una Manzana
  var manzana1 = Manzana(200);
  print(manzana1.nombre);     // Podemos acceder a sus propiedades
  manzana1.come();            // Llamamos al metodo come (Ese metodo lo tiene el padre Fruta)
  print(manzana1.peso);       // Accedemos al get peso 
  manzana1.peso = 50;         // Asignamos valores por el set
  print(manzana1.peso);     

  // Creamos un melon y llamamos al metodo come
  var melon2 = Melon();
  print(melon2.nombre);
  melon2.come();
}