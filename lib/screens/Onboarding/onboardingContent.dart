class Onboardingcontent {
  String Image;
  String title;
  String disposition;

  Onboardingcontent(
      {required this.Image, required this.title, required this.disposition});
}
  List<Onboardingcontent> contents = [
    Onboardingcontent(
        Image: 'assets/img/logo.png',
        title: 'AZOMALLI',
        disposition: 'PROYECTO EMPREDEDOR '),
    Onboardingcontent(
        Image: 'assets/img/oso.png',
        title: 'PRODUCTOS',
        disposition: 'VELAS EN FORMA DE OSO PARA GRADUACIÓN '),
    Onboardingcontent(
        Image: 'assets/img/panditas.png',
        title: 'PRODUCTOS',
        disposition: 'JABONES ARTESANALES ')
  ];

