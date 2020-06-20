class Hora {
  int h = 0, m = 0, s = 0;
}

class Reloj {
  // Propiedades
  int hora, minuto, segundo;

  // Constructor
  /*
  Reloj(int hora, int minuto, int segundo) {
    this.hora = hora;
    this.minuto = minuto;
    this.segundo = segundo;
  }
  */

  // Constructor corto
  Reloj(this.hora, this.minuto, this.segundo);

  // Constructores nombrados, para este ejemplo los parametros son nombrados porque tienen el {}
  Reloj.nombrado({this.hora, this.minuto, this.segundo});

  // Metodos, son como funciones, tienen parametros de ingreso y de retorno
  queHoraEs() {
    String horaCompleta = '$hora:$minuto:$segundo';
    print(horaCompleta);
  }

}

void main() {

  // Para declarar un objeto no es necesario el new
  var hora = Hora();
  print(hora.h);

  hora.h = 3;
  print(hora.h);

  // Se pueden definir las propiedades una a una
  var hora2 = Hora();
  hora2.h = 6;
  hora2.m = 4;
  hora2.s = 30;

  print(hora2.h);

  // Se puede declarar el objeto y los parametros en una sola linea, con el constructor
  var reloj = Reloj(12, 24, 30);
  print(reloj.segundo);

  // Uso de constructor nombrado
  var relojNombrado = Reloj.nombrado(segundo: 15, hora: 8, minuto: 10);
  print(relojNombrado.minuto);

  // Llamado de metodos
  relojNombrado.queHoraEs();

}