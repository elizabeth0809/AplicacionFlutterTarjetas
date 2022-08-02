import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels:
          false, //esto hace que el seleccionado desaparesca el texto
      showUnselectedLabels: false, //esto igual solo que no los seleccionados
      //esto hace que lo seleccionado tenga color rosado
      selectedItemColor: Colors.pink,
      //color de la barra de abajo
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(166, 117, 152, 1),
      //esto indica que tiene el foco actualmente
      currentIndex: 2,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined), label: 'calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'grafica'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Usuarios'),
      ],
    );
  }
}
