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
        child: Text(producto.title),
      ),
    );
  }
}
