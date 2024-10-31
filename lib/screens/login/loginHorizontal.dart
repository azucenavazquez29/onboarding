import 'package:flutter/material.dart';
import 'package:practica3_onboarding_screen_y_responsive_desing/config/storage/tema_storage.dart';

class Loginhorizontal extends StatefulWidget {
  const Loginhorizontal({super.key});
  @override
  State<Loginhorizontal> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Loginhorizontal> {
  ///para recuperar los datos de usan los controladores
  final conUser = TextEditingController();
  final conPwd = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    //definicion de las cajas de texto
    TextFormField txtUser = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: conUser,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
      ),
    );
    TextFormField txtPass = TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: conPwd,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.password_sharp),
      ),
    );
    final ctnCredentials = Positioned(
      bottom: MediaQuery.of(context).size.height * .3,
      child: Container(
        //para usar el botton, le debemos dar un tamaño en especifivo
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(20)),
        child: //puede un grind,row, listview,
            ListView(
          //solo la tiene list view
          shrinkWrap:
              true, //hace la magia para que se pueda retraer al escribir
          //final declaras una constante en la compilacion
          children: [txtUser, txtPass],
        ),
      ),
    );

    final btnLogin = Positioned(
      width: MediaQuery.of(context).size.width * .4,
      bottom: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * .1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
        onPressed: () {
          TemaStorage tema = TemaStorage();
          print('Deberia de mandar algo');
          print(tema.cargarNumeroTema.toString());
          isLoading = true;
          setState(() {});
          //se usa el then , para que lso demas valores no pasen a segundo plano
          Future.delayed(const Duration(milliseconds: 4000)).then(
            (value) => {
              isLoading = false,
              setState(() {}),
              Navigator.pushNamed(context, '/filtroMenu')
            },
          );
        },
        child: const Text(
          'Login',
        ),
      ),
    );

    final btnregistro = Positioned(
      width: MediaQuery.of(context).size.width * .3,
      bottom: MediaQuery.of(context).size.width * 0.05,
      left: MediaQuery.of(context).size.width * .1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
        onPressed: () {
          isLoading = true;
          setState(() {});
          //se usa el then , para que lso demas valores no pasen a segundo plano
          Future.delayed(const Duration(milliseconds: 4000)).then(
            (value) => {
              isLoading = false,
              setState(() {}),
              Navigator.pushNamed(context, '/Registro')
            },
          );
        },
        child: const Text(
          'registro',
        ),
      ),
    );

    final gifLoading = Positioned(
      top: 5,
      child: Image.asset(
        'assets/img/logo.png',
        height: 100,
      ),
    );

    ///modelo
    return Scaffold(
      body: Container(
        //estira a la imagen
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              ///ayuda a conocar de manera estatica
              top: MediaQuery.of(context).size.height * .04,
              // left: 250,
              child: Image.asset(
                'assets/img/logo.png',
                //el contairner se adapta a sus hijos
                width: MediaQuery.of(context).size.width * .099999,
              ),
            ),
            ctnCredentials,
            btnLogin,
            isLoading ? gifLoading : Container(),
            btnregistro
          ],
        ),
      ),
    );
  }
}
