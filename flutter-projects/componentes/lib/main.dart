import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Componentes'),
        ),
        body: Center(
          child: Column(
            children: [
              PrimaryButton(
                text: 'Haz click',
                onPressed: () => print('Hola'),
              ),
              PrimaryButton(
                text: 'Haz click otra vez',
                onPressed: () => print('Hola'),
              ),
              SecondaryButton(
                text: 'Haz click una ultima otra vez',
                onPressed: () {},
              ),
              AlternativeButton(
                text: 'Haz click una ultima otra vez',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// *  Otros widgets

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // color de fondo
        foregroundColor: Colors.white, // color de texto
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class AlternativeButton extends StatelessWidget {
  const AlternativeButton({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Holii');
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          // color: Colors.purple[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Haz clic pofabo',
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.add)
          ],
        ),
      ),
    );
  }
}
