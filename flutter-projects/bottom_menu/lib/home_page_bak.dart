import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, this.currentIndex = 0});

  int currentIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();

  @override
  void initState() {
    // TODO: implementar la transición de la
    //TODO:  página mediante un gestor de estados
    super.initState();
    // pageController.animateToPage(
    //   widget.currentIndex,
    //   curve: Curves.easeIn,
    //   duration: const Duration(milliseconds: 300),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: PageView(
        controller: pageController,
        // se bloquea el scroll
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          widget.currentIndex = value;
          setState(() {});
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndex,
        onTap: (index) {
          widget.currentIndex = index;

          pageController.animateToPage(
            index,
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
          );
          setState(() {});
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
      ),
    );
  }
}
