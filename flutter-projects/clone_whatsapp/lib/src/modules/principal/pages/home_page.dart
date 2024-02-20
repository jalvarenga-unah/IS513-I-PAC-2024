import 'package:clone_whatsapp/src/modules/principal/pages/fragments/camara_page.dart';
import 'package:clone_whatsapp/src/modules/principal/pages/fragments/chats_page.dart';
import 'package:clone_whatsapp/src/shared/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Whatsapp Clone',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.teal,
          actions: [
            CustomIconButton(
              icon: Icons.camera_alt,
              iconSize: 30.0,
              onPressed: () {},
            ),
            CustomIconButton(
              icon: Icons.search,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              onTap: (value) => print('Tab: $value'),
              tabs: const [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  // text: 'ESTADOS',
                  child: Text(
                    'ESTADOS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'LLAMADAS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            CamaraPage(),
            ChatsPage(),
            EstadosPage(),
            LlamadasPage(),
          ],
        ),
      ),
    );
  }
}

class LlamadasPage extends StatelessWidget {
  const LlamadasPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Llamadas'));
  }
}

class EstadosPage extends StatelessWidget {
  const EstadosPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Estados'));
  }
}
