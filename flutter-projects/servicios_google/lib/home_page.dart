import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    // final users = firestore.collection('usuarios').get();
    final users = firestore.collection('usuarios').snapshots();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final listaUsuarios = snapshot.data!.docs; // La lista de documentos

            return ListView.builder(
              itemCount: listaUsuarios.length,
              itemBuilder: (context, index) {
                final user = listaUsuarios[index];

                // user.id;

                return ListTile(
                  title: Text(user['nombre']),
                  subtitle: Text(user['correo']),
                  trailing: Text('${user['telefono']}'),
                  onTap: () {
                    //Navegacion a NewUserPage

                    Navigator.pushNamed(context, '/new_user',
                        arguments: user.id);
                  },
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/new_user');
        },
        tooltip: 'Nuevo usuario',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
