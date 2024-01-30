void main() {
  final wolverine = Heroe('Logan', 'Regeneración');
  wolverine.saludar();
}

class Heroe {
  //propiedades
  late final String nombre;
  late final String poder;

  // constructor
  Heroe(String nombre, String poder) {
    this.nombre = nombre;
    this.poder = poder;
  }

  // comportamientos
  void saludar() {
    print('Hola soy ${this.nombre} y mi poder es $poder');
  }
}
