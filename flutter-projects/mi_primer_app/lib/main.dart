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
    const textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.deepPurple,
    );

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
              const Text(
                'Hello World!',
                style: textStyle,
              ),
              Text(
                '$contador',
                style: textStyle,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          // backgroundColor: Colors.deepPurple[100],
          onPressed: incrementarContador,
          child: const Icon(
            Icons.add,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  void incrementarContador() {
    contador++;
    setState(() {});
  }
}
