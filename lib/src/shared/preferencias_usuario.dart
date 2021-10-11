import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  // Patrón singleton
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  int get genero {
    return _prefs.getInt('genero') ?? 0;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  bool get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? true;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  String get nombre {
    return _prefs.getString('nombre') ?? 'Juan';
  }

  set nombre(String value) {
    _prefs.setString('nombre', value);
  }

  String get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
