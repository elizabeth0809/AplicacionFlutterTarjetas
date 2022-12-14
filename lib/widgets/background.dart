import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8], //esto indica donde empiza el gradiente
          colors: [Colors.red, Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //gradiente
        Container(
          decoration: boxDecoration,
        ),
        //caja rosada
        Positioned(top: -100, left: -50, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 70, 97, 250),
              Color.fromRGBO(236, 98, 188, 1)
            ]),
            borderRadius: BorderRadius.circular(80)),
      ),
    );
  }
}
