import 'package:flutter/material.dart';

// StatelessWidget: No cambia su estado
// StatefulWidget: Puede cambiar su estado

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primer App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Mi primer App',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          //rgb(186, 104, 200)
          // backgroundColor: Color.fromRGBO(186, 104, 200, 1),
          backgroundColor: const Color(0xFFAB47BC),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Hizo tantas veces clic:'),
              Text('$contador'),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          // backgroundColor: Colors.deepPurple[100],
          onPressed: () {
            contador++;

            // no es necesario que la logica esté dentro de
            // la función setState
            // solo se necesita hacer el llamado a la función
            setState(() {});
          },
          child: const Icon(
            Icons.add,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
