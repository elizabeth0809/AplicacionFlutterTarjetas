import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5],
                colors: [Color(0xff5EE8C5), Color(0xff30BAD6)])),
        child: PageView(
          physics: BouncingScrollPhysics(),
          //con esta propiedad hace scroll en vertical
          scrollDirection: Axis.vertical,
          children: [Page1(), Page2(), Page1()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      //background
      Background(),
      Maincontent()
    ]);
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: TextButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Bienvinido',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
            style: TextButton.styleFrom(
                backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
          ),
        ),
      ),
    );
  }
}

class Maincontent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Text('11º', style: EstiloTexto()),
          Text('Miercoles', style: EstiloTexto()),
          Expanded(child: Container()),
          //Icono
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  TextStyle EstiloTexto() {
    return TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}
