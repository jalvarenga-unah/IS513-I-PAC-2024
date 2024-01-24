void main() {
  //variables
  final nombre; // declarar con un valor nulo
  nombre = 'Juan perez'; // inicializar una vez
//   nombre = 'Juan Alvarenga'; // ya no es permitido
  const edad = 29;

  final double estatura = 1.60;

  // print(nombrej

  final List<int> numeros = [1, 2, 3, 4, 5];

  //desestructuración, operador spread (...)
  final List<int> copiaNumeros = [...numeros]; // hacer una copia de la lista

  // el opreador rest (...) se utiliza para desestructurar listas
  //puedo declarar variables con el operador rest
  final [primero, segundo, tercero, cuarto, quinto, ...resto] = numeros;

  // final int primero = numeros[0];
  // final int segundo = numeros[1];
  // final List<int> resto = numeros.sublist(2);

  print(primero); // int
  print(segundo); // int
  print(resto); // List<int> (3)

  numeros.add(10);

  numeros.remove(1);

  numeros[0] = 6;

  for (int a = 0; a < numeros.length; a++) {
    print(numeros[a]);
  }

  final List<String> postres = ['Torta', 'Helado', 'Galletas'];

  for (final item in postres) {
    // item: corresponde a cada elemento de la lista (postres)
    print(item);
  }

  print(numeros);
  print(copiaNumeros);

//   final mascota = {};
}
