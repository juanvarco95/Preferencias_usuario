import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String routeName = 'settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor = false;
  int _genero = 1;
  final String _nombre = 'Juan';
  TextEditingController? _editingController;

  @override
  void initState() {
    _editingController = TextEditingController(text: _nombre);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('HomePage'),
        ),
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
                        value: _secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            _secondaryColor = value;
                          });
                        }),
                    RadioListTile(
                        title: const Text('Masculino'),
                        value: 1,
                        groupValue: _genero,
                        onChanged: (value) {
                          setState(() {
                            _genero = value as int;
                          });
                        }),
                    RadioListTile(
                        title: const Text('Femenino'),
                        value: 2,
                        groupValue: _genero,
                        onChanged: (value) {
                          setState(() {
                            _genero = value as int;
                          });
                        }),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _editingController,
                        decoration: const InputDecoration(
                            labelText: 'Nombre',
                            helperText: 'Nombre de usuario'),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
