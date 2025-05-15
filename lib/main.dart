import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';
import 'homepage.dart';
import 'resultados.dart';
void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        "Quiz": (context) => Quiz(),
        Resultado.routeName : (context) => Resultado(),
      }
    );
  }
}