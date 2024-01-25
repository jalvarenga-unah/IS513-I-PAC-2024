void main() {
  // Maps
  final Map<String, dynamic> mascota = {
    'nombre': 'Apolo',
    'edad': 10,
    'raza': 'Pastor Aleman',
    'comidasFavoritas': ['Carne', 'Pollo', 'Pescado', 'Pescado'],
    'juguetes_favoritos': [
      {'nombre': 'Pelota', 'color': 'Rojo'},
      {'nombre': 'Hueso', 'color': 'Blanco'},
      {'nombre': 'Hueso', 'color': 'Rojo'},
    ],
    'direccion': {'calle': 'Calle 1', 'numero': 123}
  };

  //agrergar un nuevo elemento al Map
  // mascota['eda'] = 11;

  // print(mascota['nombre']);
  // print(mascota['comidasFavoritas']);
  // print(mascota['direccion']['calle']);

  final List<String> comidas = mascota['comidasFavoritas'];
  final List juguetes = mascota['juguetes_favoritos'];

  final resultado = comidas.firstWhere((comida) => comida == 'Pescado');
  final rjuguetes =
      juguetes.where((juguete) => juguete['color'] == 'Rojo').toList();

  print(resultado);
  print(rjuguetes);
}
