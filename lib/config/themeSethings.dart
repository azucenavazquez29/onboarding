import 'package:flutter/material.dart';
 // En este codigo se muestra los temas 
class Themesethings {
  static ThemeData TemaClaro() {
    final tema = ThemeData.light();
    return tema;
  }

  static ThemeData TemaOscuro() {
    final tema = ThemeData.dark();
    return tema;
  }

  static ThemeData TemaPersonalizado() {
    // double aa = 2.1; es el valor de tipo de dato
    final tema = ThemeData.dark();
    return tema.copyWith(
      primaryColor: const Color.fromARGB(255, 236, 225, 69), // Un azul oscuro suave
      scaffoldBackgroundColor:
          const Color.fromARGB(255, 218, 233, 14), // Fondo claro suave
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 215, 230, 17), // Aplicamos el mismo azul oscuro en la AppBar
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 230, 226, 18), // Texto blanco en la AppBar
          fontSize: 20,
        ),
      ),
      textTheme: tema.textTheme.copyWith(
          ),
      buttonTheme: tema.buttonTheme.copyWith(
        buttonColor: const Color.fromARGB(255, 233, 94, 186), // Botones con azul oscuro
        textTheme: ButtonTextTheme.primary, // Texto de botones en blanco
      ),
      floatingActionButtonTheme: tema.floatingActionButtonTheme.copyWith(
        backgroundColor: const Color.fromARGB(255, 210, 231, 14), // FAB con azul oscuro
      ),
      colorScheme: tema.colorScheme.copyWith(
        secondary: const Color.fromARGB(255, 172, 74, 131), // Color secundario para detalles
      ),
    );
  }

}
