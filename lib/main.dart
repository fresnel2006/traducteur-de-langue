import 'package:app1/Pages/Apprentissage.dart';
import 'package:app1/Pages/Communaute.dart';
import 'package:app1/Pages/Inscription%20et%20connexion/Connexion.dart';
import 'package:app1/Pages/Inscription%20et%20connexion/Inscription.dart';
import 'package:app1/Pages/Inscription%20et%20connexion/Profil.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://nciavyshfzeeasjjdgck.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5jaWF2eXNoZnplZWFzampkZ2NrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjgxNDM0OTgsImV4cCI6MjA4MzcxOTQ5OH0.6EYAnj7czEopspYOo6zo8Q8DjGc1mUyQBNrSasxj3Pg',
  );

  runApp(MyApp());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  bool rediriger=false;
  Future <void> redirection() async{
    var perfs=await SharedPreferences.getInstance();
    var nom_utilisateur=await perfs.getString("nom_d_utilisateur")??"";

    if(nom_utilisateur==""){
      print(nom_utilisateur.toString());
      print("c'est vide");
    setState(() {
      rediriger=true;
    });
      print(rediriger.toString());
    }else{
      setState(() {
        rediriger=false;
      });
      print("c'est pas vide");
      print(rediriger.toString());
      }
  }
  @override
  void initState(){
    super.initState();
    redirection();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:rediriger?InscriptionPage():SwitchPage(),
      ),
    );
  }
}
