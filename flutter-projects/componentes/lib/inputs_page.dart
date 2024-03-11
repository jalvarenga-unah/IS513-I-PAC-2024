import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final nombreController = TextEditingController();
  final apellidoController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const FlutterLogo(size: 160),
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  maxLength: 30,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    label: Text('Email'),
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Text('formulario'),
                const Divider(),
                Form(
                  key: formKey, // identificador del formulario "controller"
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nombreController,
                        maxLength: 20,
                        validator: (value) {
                          if (value!.isEmpty) return 'El nombre es obligatorio';

                          if (value.length < 3)
                            return 'El nombre debe tener al menos 3 caracteres';

                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          label: Text('Nombre'),
                          icon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //acceder al valor del email
            print(emailController.text);

            if (formKey.currentState!.validate()) {
              print('formulario valido');
              //TODO: LOGICA PARA GUARDAR LOS DATOS
            }
          },
          child: const Icon(Icons.clear),
        ));
  }
}

class CustomInput extends StatefulWidget {
  CustomInput({
    super.key,
    required this.controller,
    this.obscureText = false,
  });

  final TextEditingController controller;
  bool obscureText;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        label: const Text('Password'),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
            onPressed: () {
              // TODO: logica para mostrar u ocultar el pasword
            },
            icon: const Icon(Icons.remove_red_eye_rounded)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
