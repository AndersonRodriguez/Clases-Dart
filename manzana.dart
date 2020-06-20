// Clase Fruta, es abstract por eso no se puede declarar solo heredar
// Si creamos un get, set o un metodo y no lo implementamos, es obligatorio 
// en el objeto que hereda sobrescribirlo
abstract class Fruta {

  // Parametro nombre
  String nombre;

  // El constructor recibe el nombre
  Fruta(this.nombre);

  // Es un get, pero no se implemento solo se declaro, 
  // por ende en los objetos que lo heredan tienen que implementarlo sobrescribiendolo
  bool get femenina;

  // Metodo come
  come() {
    var det = femenina ? 'una' : 'un';  // Es un if de una sola linea donde se compara y la primera opcion es si se cumple la condicion
    print('Me comi $det $nombre');
  }

}

// Clase Manzana que hereda de Fruta
class Manzana extends Fruta {
  // Las propiedades privadas se denotan con el '_', si estan en un archivo diferente no se puede ver solo Manzana tiene acceso
  int _peso;   

  // El constructor tiene el parametro de peso, y le pasa al padre 'Manzana'
  Manzana(this._peso) : super('Manzana');  

  // Sobrescribimos el get femenina
  @override 
  bool get femenina => true;

  // En los get se pueden hacer procesamientos para retornar un valor
  get peso => _peso / 2;

  // Al asignar un valor por el set, tambien podemos hacer todo el procesamiento que querramos 
  set peso(int peso) => _peso = peso; 
  
}
