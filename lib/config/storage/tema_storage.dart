import 'package:shared_preferences/shared_preferences.dart';
 // Guardar los datos en un disposistivo 
class TemaStorage {
  Future<void> guardarNumeroTema(int? number) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('tema', number!);
  }

  Future<int?> cargarNumeroTema() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('tema');
  }
}
