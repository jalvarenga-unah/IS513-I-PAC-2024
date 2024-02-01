void main() async {
  // Future
  print('inciando proceso');
  // print(getusers());

  // getusers().then((respuesta) {
  //   print(respuesta);
  //   print('proceso finalizado');
  // }).catchError((error) {
  //   print(error);
  // });

  try {
    String respuesta = await getusers();
    print(respuesta);
  } catch (e) {
    throw ('error en la tarea');
  }
}

Future<String> getusers() async {
// await: pausa la ejecución de la función hasta que se resuelva la tarea
  await Future.delayed(Duration(seconds: 4), () {
    print('usuarios obtenidos');
  });

  return 'tarea resuelta';
}
