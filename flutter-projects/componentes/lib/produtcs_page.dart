import 'package:componentes/models/producto.dart';
import 'package:componentes/my_routes.dart';
import 'package:componentes/providers/productos_provider.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ProductosProvider();

    // final productos = provider.getProdutcs();

    // FutureBuilder

    // print(productos);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
        ),
        body: FutureBuilder(
          future: provider.getProdutcs(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('ocurrio algo inesperado: ${snapshot.error}'),
              );
            }
            if (snapshot.hasData) {
              final productos = snapshot.data!;

              return ListProducts(productos: productos);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({
    super.key,
    required this.productos,
  });

  final List<Producto> productos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productos.length,
      itemBuilder: (context, index) {
        final producto = productos[index];

        return ItemProduct(producto: producto);
      },
    );
  }
}

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.producto,
  });

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                producto.image,
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              producto.title,
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              producto.description.length > 100
                  ? producto.description.substring(0, 50)
                  : producto.description,
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    MyRoutes.productDetails.name,
                    arguments: producto,
                  );
                },
                child: const Text('ver mas...'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
