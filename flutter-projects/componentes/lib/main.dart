import 'package:componentes/my_router.dart';
import 'package:componentes/my_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      initialRoute: MyRoutes.home.name,
      routes: routes,
      onGenerateRoute: (settings) {
        // ? Si la ruta no existe, se crea una ruta por defecto
        // ? que muestra un mensaje de error

        // switch (settings.name) {
        //   case '/':
        //     return MaterialPageRoute(builder: (context) => const HomePage());
        //   case '/details':
        //     return MaterialPageRoute(builder: (context) => const DetailsPage());
        //   default:
        // return MaterialPageRoute(
        //   builder: (context) => PageNotFound(name: settings.name),
        // );
        // }

        return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name),
        );
      },
    );
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('La ruta $name no existe'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, MyRoutes.home.name);
              },
              child: const Text('Ir a la página principal'),
            ),
          ],
        ),
      ),
    );
  }
}
