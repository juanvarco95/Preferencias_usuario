import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/shared/preferencias_usuario.dart';
import 'package:preferencias_usuario/src/widgets/drawer_widget.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String routeName = 'settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor = false;
  int _genero = 0;
  TextEditingController? _editingController;

  final prefs = PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    _genero = prefs.genero;
    prefs.ultimaPagina = SettingsPage.routeName;
    _secondaryColor = prefs.colorSecundario;
    _editingController = TextEditingController(text: prefs.nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
          centerTitle: true,
          title: const Text('Ajustes'),
        ),
        drawer: const DrawerWidget(),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                  children: [
                    const Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.blueAccent,
                    ),
                    SwitchListTile(
                        title: const Text('Secondary Color'),
                        value: _secondaryColor!,
                        onChanged: (value) {
                          setState(() {
                            _secondaryColor = value;
                            prefs.colorSecundario = value;
                          });
                        }),
                    RadioListTile(
                        title: const Text('Masculino'),
                        value: 1,
                        groupValue: _genero,
                        onChanged: (value) {
                          setState(() {});
                          _genero = value as int;
                          prefs.genero = value;
                        }),
                    RadioListTile(
                      title: const Text('Femenino'),
                      value: 2,
                      groupValue: _genero,
                      onChanged: (value) {
                        setState(() {
                          _genero = value as int;
                          prefs.genero = value;
                        });
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _editingController,
                        decoration: const InputDecoration(
                            labelText: 'Nombre',
                            helperText: 'Nombre de usuario'),
                        onChanged: (value) {
                          prefs.nombre = value;
                        },
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
