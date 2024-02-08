import 'package:flutter/material.dart';

// StatelessWidget: No cambia su estado
// StatefulWidget: Puede cambiar su estado

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: const SizedBox(
          width: double.infinity,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hizo tantas veces clic:'),
              Text('10'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // backgroundColor: Colors.deepPurple[100],
          onPressed: () {
            print('Hizo clic ');
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
