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

String nombreCompleto({required String nombre, String? apellido}) =>
    '$nombre $apellido';

String nombreCompleto2(String nombre, {String? apellido}) {
  print('olii');
  return '$nombre $apellido';
}
