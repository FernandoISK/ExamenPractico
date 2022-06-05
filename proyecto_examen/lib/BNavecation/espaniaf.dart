import 'package:flutter/material.dart';

class EspaneaF extends StatelessWidget {
  final int valor;
  const EspaneaF(this.valor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 187, 187, 187),
        Color.fromARGB(255, 84, 84, 84)
      ],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    String font = 'assets/humedo.jpg';
    String estado = 'Humedo';
    double Fahrenheit = 0;
    if (valor <= 10) {
      font = 'assets/nevado.jpg';
      estado = 'Nevado';
    } else if (valor >= 30) {
      font = 'assets/soleado.jpg';
      estado = 'Soleado';
    }
    Fahrenheit = (valor * 1.8) + 32;
    return MaterialApp(
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(font),
              fit: BoxFit.cover,
            )),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Temperatura en España",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          foreground: Paint()..shader = linearGradient),
                    ),
                    Text(
                      "$Fahrenheit°F",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 100,
                          foreground: Paint()..shader = linearGradient),
                    ),
                    Text(
                      estado,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          foreground: Paint()..shader = linearGradient),
                    ),
                  ],
                ),
              ),
            )));
  }
}
