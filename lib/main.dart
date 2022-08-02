import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //esto hace que los txtos del sistema no se pongan en negro al abrir la aplicacion
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => HomeScreen(),
        'basic_desing': (_) => BasicDesingScreen(),
        'scroll_Screen': (_) => ScrollScreen()
      },
    );
  }
}
