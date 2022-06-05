import 'package:flutter/material.dart';
import 'package:proyecto_examen/BNavecation/mexico.dart';
import 'package:proyecto_examen/BNavecation/usd.dart';

import 'canada.dart';
import 'china.dart';
import 'espania.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> Myrouts = [
      const PageMexico(),
      const PageUSD(),
      const PageCanada(),
      const PageEspania(),
      const PageChina(),
    ];
    return Myrouts[index];
  }
}
