import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const String routeName = 'home';
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        title: const Text('HomePage'),
      ),
      drawer: const DrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nombre: ${prefs.nombre}'),
          const Divider(),
          Text('Género: ${prefs.genero}'),
          const Divider(),
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
        ],
      ),
    );
  }
}
