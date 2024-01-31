import 'heroe.dart';

void main() {
  final heroe = {'nombre': 'Logan', 'poder': 'Regeneración'};

  final wolverine = Heroe.fromJson(heroe);

  // wolverine.nombre = 'Batman';
  wolverine.villano = 'Magneto';

  final batman = Heroe(nombre: 'Batman', poder: 'El dinero');
  wolverine.saludar();
  batman.saludar();
}
