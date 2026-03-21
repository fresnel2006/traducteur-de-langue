import 'package:app1/Pages/Apprentissage.dart';
import 'package:app1/Pages/BienvenueApprentissage.dart';
import 'package:app1/Pages/Debutant.dart';
import 'package:app1/Pages/Entrainement.dart';
import 'package:app1/Pages/Menu.dart';
import 'package:app1/Pages/Niveau.dart';
import 'package:app1/Pages/Traducteur.dart';
import 'package:app1/Pages/Bienvenue.dart';
import 'package:app1/Pages/Inscription.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:InscriptionPage(),
      ),
    );
  }
}
