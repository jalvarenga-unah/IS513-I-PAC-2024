import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({
    super.key,
  });

  static const List<Map<String, dynamic>> chats = [
    {
      "nombre": "Juan Alvarenga",
      "mensaje": "Hola, ¿cómo estás?",
      "hora": "10:00",
      "foto":
          "https://upload.wikimedia.org/wikipedia/commons/f/f9/Logo-unah.jpg"
    },
    {
      "nombre": "Pedro Lopez",
      "mensaje": "Vamno a juga",
      "hora": "15:00",
      "foto": ""
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      // separatorBuilder: (context, index) {
      //   return const Text('Separador');
      // },
      itemBuilder: (context, index) {
        if (chats.isEmpty) {
          return const Center(
            child: Text('No hay chats'),
          );
        }

        return ItemChat(
          nombre: chats[index]['nombre']!,
          mensaje: chats[index]['mensaje']!,
          hora: chats[index]['hora']!,
          foto: chats[index]['foto'],
        );
      },
    );
  }
}

class ItemChat extends StatelessWidget {
  const ItemChat({
    super.key,
    required this.nombre,
    required this.mensaje,
    required this.hora,
    this.foto,
  });

  final String nombre;
  final String mensaje;
  final String hora;
  final String? foto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Card(
        child: ListTile(
          title: Text(nombre),
          subtitle: Text(mensaje),
          leading: foto == ""
              ? Image.asset('assets/images/logo.jpg')
              : CachedNetworkImage(
                  imageUrl: foto!,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.no_photography),
                ),
          trailing: Text(hora),
        ),
      ),
    );
  }
}
