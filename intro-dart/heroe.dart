class Heroe {
  //propiedades
  final String nombre;
  final String poder;
  String? _villano;

  // constructor 1
  // Heroe(String nombre, String poder) {
  //   this.nombre = nombre;
  //   this.poder = poder;
  // }

  // constructor 2
  Heroe({required this.nombre, required this.poder});

  // factory constructor
  // Heroe.nombre({required this.nombre});
  // Heroe.poder({required this.nombre});

  factory Heroe.fromJson(Map<String, dynamic> json) =>
      Heroe(nombre: json['nombre'], poder: json['poder']);

  // comportamientos
  void saludar() {
    print(
        'Hola soy ${this.nombre} y mi poder es $poder y mi villano es $_villano');
  }

  // getters y setters
  String get villano => _villano ?? 'No tiene villano';

  set villano(String nombre) {
    // todo lo que quiera

    _villano = nombre;
  }
}
