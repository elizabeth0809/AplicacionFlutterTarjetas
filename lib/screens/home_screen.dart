import 'package:aplicacion_diseno/widgets/card_table.dart';
import 'package:aplicacion_diseno/widgets/custom_buttom_navigation.dart';
import 'package:aplicacion_diseno/widgets/page_title.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          //cuerpo de la aplicacion
          _HomeBody()
        ],
      ),
      //navegacion en el bottom
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //titulos
        PageTitle(),
        //Card Table
        CardTable(),
      ],
    ));
  }
}
