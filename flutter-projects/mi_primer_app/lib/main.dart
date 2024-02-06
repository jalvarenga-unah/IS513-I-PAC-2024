import 'package:flutter/material.dart';

// StatelessWidget: No cambia su estado
// StatefulWidget: Puede cambiar su estado

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Mi primer App',
            style: TextStyle(color: Colors.white),
          ),
          //rgb(186, 104, 200)
          // backgroundColor: Color.fromRGBO(186, 104, 200, 1),
          backgroundColor: Color(0xFFAB47BC),
        ),
        body: const Center(
          child: Text('Hola Mundo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
