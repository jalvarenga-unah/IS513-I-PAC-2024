import 'package:bottom_menu/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Inherited

  final homeController = Get.put<HomeController>(HomeController());
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
      ),
      body: PageView(
        // se bloquea el scroll
        controller: pageController,
        // physics: const NeverScrollableScrollPhysics(),

        onPageChanged: (value) {
          homeController.currentIndex = value;
        },
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text('Inicio'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Configuración'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            currentIndex: homeController.currentIndex,
            onTap: (index) {
              homeController.currentIndex = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configuración',
              ),
            ],
          );
        },
      ),
    );
  }
}
