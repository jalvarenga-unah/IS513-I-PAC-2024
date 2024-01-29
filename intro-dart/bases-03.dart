void main() {
  final resultado = saludo('Juan');
  print(resultado);

  final String? nombre = null;

  print(nombreCompleto(nombre: 'Juan'));
  print(nombreCompleto2('Juan', apellido: 'Alvarenga'));
}

String saludo(String nombre) {
  return 'Hola $nombre';
}

// Argumentos con nombre, se usa {} para definir los argumentos
// estos argumentos son opcionales, se puede definir un valor por defecto
// en caso de que no se envie el argumento o se envie null
// si se necesita un argumento obligatorio se puede usar required
// para que un argumento sea opcional se debe definir un valor por defecto o
// se debe definir como nullable con el operador ?
String nombreCompleto({required String nombre, String? apellido}) =>
    '$nombre $apellido';

// Otra forma de definir una funcion con argumentos con nombre
// es combinar el uso de {} y el operador ? para definir argumentos
// ademas se puede definir argumentos con nombre y argumentos obligatorios (Posicionales)
String nombreCompleto2(String nombre, {String? apellido}) {
  print('olii');
  return '$nombre $apellido';
}
