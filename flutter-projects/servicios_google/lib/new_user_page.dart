import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewUserPage extends StatelessWidget {
  NewUserPage({super.key});

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final telefonoController = TextEditingController();
  final instance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String?;

    if (args != null) {
      instance.collection('usuarios').doc(args).get().then((value) {
        nombreController.text = value['nombre'];
        correoController.text = value['correo'];
        telefonoController.text = value['telefono'].toString();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('agregar usuario nuevo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: correoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: telefonoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Teléfono',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  // Add user to Firebase
                  //obtener los valores de los textfields
                  final data = {
                    'nombre': nombreController.text,
                    'correo': correoController.text,
                    'telefono': int.parse(telefonoController.text)
                  };

                  //mostrar un icono de carga

                  //agregar con un ID automatico
                  final respuesta =
                      await instance.collection('usuarios').add(data);

                  // final respuesta = instance
                  //             .collection('usuarios/123/asignatutas_asignadas')
                  //             .add(data);

                  // final respuesta = instance
                  //     .collection('usuarios')
                  //     .doc('123')
                  //     .collection('asignatutas_asignadas')
                  //     .doc() //Id autogenerado
                  //     .set(data);

                  print(respuesta);
                },
                child: const Text('Agregar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
