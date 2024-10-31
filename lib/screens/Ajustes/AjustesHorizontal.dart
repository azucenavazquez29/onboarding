import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/TemaApp/temaAppVertical.dart';

class Ajusteshorizontal extends StatelessWidget {
  const Ajusteshorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final CambiarTema = Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/CambiarTema');
        },
        child: Container(
          // height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .1,
          padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(40, 228, 10, 162),
            border: Border(
              left: BorderSide(
                color: const Color.fromARGB(255, 221, 233, 59),
                width: 4,
              ),
            ),
          ),
          child: const Text(
            'Cambiar el tema de la aplicacion',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    final cambiarTipoLetra = Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/CambiarLetra');
        },
        child: Container(
          // height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .1,
          padding: const EdgeInsets.all(20),
          // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(230, 235, 95, 188),
            border: Border(
              left: BorderSide(
                color: const Color.fromARGB(255, 194, 231, 222),
                width: 4,
              ),
            ),
          ),
          child: const Text(
            'Cambiar la fuente de la aplicacion',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

    final ListaAjustes = Container(
      width: MediaQuery.of(context).size.width,
      // padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: ListView(
        shrinkWrap: true,
        children: [CambiarTema, cambiarTipoLetra],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes de la app'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: ListaAjustes,
    );
  }
}
