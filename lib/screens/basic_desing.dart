import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //imagen principal
          Image(image: AssetImage('assets/hola.png')),
          //titulo
          Title(),
          //botones
          ButtonSection(),
//Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año'),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lago de maracaibo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Venezuela, Maracaibo',
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Llamar'),
          CustomButton(icon: Icons.location_on, text: 'Rutas'),
          CustomButton(icon: Icons.share, text: 'Compartir'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        this.icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(
        this.text,
        style: TextStyle(color: Colors.blue),
      ),
    ]);
  }
}
