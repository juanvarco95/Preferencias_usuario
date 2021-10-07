import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: Container(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        const ListTile(
          leading: Icon(Icons.ac_unit_sharp),
          title: Text('Freeze'),
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pushReplacementNamed(context, SettingsPage.routeName);
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
      ],
    ));
  }
}
