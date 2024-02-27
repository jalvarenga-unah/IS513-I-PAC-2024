import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(
              text: 'Ir a otra pantalla',
              onPressed: () {
                // * Navegación a otra pantalla
                Navigator.pushNamed(context, '/details');
              },
            ),
            SecondaryButton(
              text: ' Navegar y reemplazar',
              onPressed: () {
                // * Navegación a otra pantalla y reemplazar
                //* la pila de navegación
                Navigator.pushReplacementNamed(context, 'detail');
              },
            ),
            // AlternativeButton(
            //   text: 'Haz click una ultima otra vez',
            //   onPressed: () {},
            // ),
          ],
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
