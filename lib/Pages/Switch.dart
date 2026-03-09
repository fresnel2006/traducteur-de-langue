import 'package:app1/Pages/Traducteur.dart';
import 'package:app1/Pages/Menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ZoomDrawer(
        menuScreen: MenuPage(), mainScreen: TraducteurPage(),
        mainScreenTapClose: true,
        angle: 0,
        slideWidth: MediaQuery.of(context).size.width *0.87,



      ) ,
    );
  }
}
