import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      // separatorBuilder: (context, index) {
      //   return const Text('Separador');
      // },
      itemBuilder: (context, index) {
        return const ItemChat();
      },
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Card(
        child: ListTile(
          title: Text('Juan Alvarenga'),
          subtitle: Text('Hola, ¿cómo estás?'),
          leading: FlutterLogo(), // la foto de perfil
          trailing: Text('10:00'),
        ),
      ),
    );
  }
}
