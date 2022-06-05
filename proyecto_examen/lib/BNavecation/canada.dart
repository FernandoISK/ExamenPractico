import 'dart:math';

import 'package:flutter/material.dart';

import 'package:proyecto_examen/BNavecation/canadaf.dart';

class PageCanada extends StatelessWidget {
  const PageCanada({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 187, 187, 187),
        Color.fromARGB(255, 84, 84, 84)
      ],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    int rng = Random().nextInt(46);
    String font = 'assets/humedo.jpg';
    String estado = 'Humedo';
    if (rng <= 10) {
      font = 'assets/nevado.jpg';
      estado = 'Nevado';
    } else if (rng >= 30) {
      font = 'assets/soleado.jpg';
      estado = 'Soleado';
    }
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
                      "Temperatura en Canada",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                          foreground: Paint()..shader = linearGradient),
                    ),
                    Text(
                      "$rng°C",
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
                    RaisedButton(
                      child: Text('Fahrenheit'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CanadaF(rng)));
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
