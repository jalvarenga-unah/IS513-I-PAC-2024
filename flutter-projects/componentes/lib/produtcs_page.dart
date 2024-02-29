import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ProductosProvider();

    final productos = provider.getProdutcs();

    // FutureBuilder

    print(productos);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Productos'),
            ],
          ),
        ));
  }
}
