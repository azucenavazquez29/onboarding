import 'package:flutter/material.dart';

class Menuapp extends StatelessWidget {
  const Menuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU APP'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ajustesApp');
              },
              icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}