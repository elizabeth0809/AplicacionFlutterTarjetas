import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.settings,
            text: 'Ajustes',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.video_collection,
            text: 'Videos',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.paid_sharp,
            text: 'Pagos',
          )
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              'scroll_Screen',
            ),
            child: _SingleCard(
              color: Colors.pink,
              icon: Icons.picture_as_pdf,
              text: 'PDF',
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              'basic_desing',
            ),
            child: _SingleCard(
              color: Colors.green,
              icon: Icons.photo_size_select_actual_rounded,
              text: 'Imagenes',
            ),
          )
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(
                    this.icon,
                    size: 35,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  this.text,
                  style: TextStyle(color: this.color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
