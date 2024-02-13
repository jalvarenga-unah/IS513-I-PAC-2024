import 'package:clone_whatsapp/src/shared/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Whatsapp Clone',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          CustomIconButton(
            icon: Icons.camera_alt,
            iconSize: 30.0,
            onPressed: () {},
          ),
          CustomIconButton(
            icon: Icons.search,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Card(
        child: ListTile(
          title: Text('Juan Alvarenga'),
          subtitle: Text('Hola, ¿cómo estás?'),
          leading: FlutterLogo(),
          trailing: Text('10:00'),
        ),
      )),
    );
  }
}
