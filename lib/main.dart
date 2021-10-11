import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/shared/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SettingsPage.routeName: (_) => const SettingsPage()
      },
    );
  }
}
