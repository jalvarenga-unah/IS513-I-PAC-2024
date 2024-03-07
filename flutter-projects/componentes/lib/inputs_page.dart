import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              CustomInput(controller: emailController),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomInput extends StatefulWidget {
  const CustomInput({
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
              obscureText = !widget.obscureText;
            },
            icon: const Icon(Icons.remove_red_eye_rounded)),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
