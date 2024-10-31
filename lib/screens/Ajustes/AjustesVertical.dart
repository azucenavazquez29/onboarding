import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/screens/Ajustes/TemaApp/temaAppVertical.dart';

class AjustesVertical extends StatelessWidget {
  const AjustesVertical({super.key});

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
            color: const Color.fromARGB(40, 238, 236, 236),
            border: Border(
              left: BorderSide(
                color: const Color.fromARGB(255, 188, 238, 72),
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
            color: const Color.fromARGB(40, 228, 192, 192),
            border: Border(
              left: BorderSide(
                color: const Color.fromARGB(255, 165, 216, 166),
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
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (Route<dynamic> route) =>
                      false, // Esto elimina todas las rutas anteriores
                );
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: ListaAjustes,
    );
  }
}
