import 'package:componentes/models/producto.dart';
import 'package:flutter/material.dart';

class ProductsDetailsPage extends StatelessWidget {
  const ProductsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final producto = ModalRoute.of(context)!.settings.arguments as Producto;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                producto.description,
                style: TextStyle(fontSize: 60),
              ),
              Text(
                producto.description,
                style: TextStyle(fontSize: 30),
              ),
              Text(
                producto.description,
                style: TextStyle(fontSize: 30),
              ),
              Text(
                producto.description,
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
