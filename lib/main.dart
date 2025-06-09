import 'package:flutter/material.dart';
import 'screens/tela_inicial.dart';
import 'screens/tela1.dart';
import 'screens/tela2.dart';
import 'screens/tela3.dart';
import 'screens/card_expandido.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação com Animações',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850],
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 4,
            shadowColor: Colors.black54,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaInicial(),
      routes: {
        '/tela1': (context) => Tela1(),
        '/tela2': (context) => Tela2(),
        '/tela3': (context) => Tela3(),
        '/card-expandido': (context) => CardExpandido(),
      },
    );
  }
}
