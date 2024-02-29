import 'package:componentes/models/producto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductosProvider {
  Future<List<Producto>> getProdutcs() async {
    // Aquí iría la lógica para obtener los productos de una API o base de datos

    // construir la URL
    // final Uri url = Uri.parse('https://fakestoreapi.com/products');

    final url = Uri.https('fakestoreapi.com', '/products');

    // ? El metodo "get", se utiliza para obtener recursos de consultas
    final response = await http.get(url);

    if (response.statusCode != 200) {
      //generar una excepcion
      throw ('Algo salio mal');
    }

    // obtener el cuerpo de la respuesta
    final datos = response.body;

    // convertir el string a un listado de maps
    final json2 = json.decode(datos);

    // convertir el listado de maps a un listado de "productos" (Producto)
    final productos = json2.map((item) => Producto.fromJson(item)).toList();

    //transformar el listado de maps a un listado de productos explicito
    return List<Producto>.from(productos);
  }
}
