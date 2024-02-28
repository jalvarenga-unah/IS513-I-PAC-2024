import 'package:componentes/details_page.dart';
import 'package:componentes/home_page.dart';
import 'package:componentes/my_routes.dart';
import 'package:componentes/produtcs_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  MyRoutes.home.name: (context) => const HomePage(),
  MyRoutes.details.name: (context) => const DetailsPage(),
  MyRoutes.products.name: (context) => const ProductsPage()
};
