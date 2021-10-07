import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomePage'),
      ),
      drawer: const DrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Nombre:'),
          Divider(),
          Text('Género:'),
          Divider(),
          Text('Color secundario:'),
          Divider(),
        ],
      ),
    );
  }
}
