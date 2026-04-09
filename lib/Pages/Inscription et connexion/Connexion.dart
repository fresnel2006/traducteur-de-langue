import 'package:app1/Pages/Bienvenue.dart';
import 'package:app1/Pages/Communaute.dart';
import 'package:app1/Pages/Inscription%20et%20connexion/Inscription.dart';

import 'package:app1/Pages/Switch.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {

  var nom_complet=TextEditingController();
  var mot_de_passe=TextEditingController();
  bool bordure1=true;
  bool bordure2=true;

  void message_d_erreur(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.white,duration: Duration(seconds: 1),content:
    Container(
      height: MediaQuery.of(context).size.height *0.1,
      decoration:BoxDecoration(
          color: Colors.white
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width *0.02,),
          Icon(Icons.dangerous_outlined,color: Colors.red,size: MediaQuery.of(context).size.width *0.12,),
          Text("Vérifier votre connexion internet",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),)
        ],
      ),
    )
    ));
  }
  Future <void> ajouter_utilisateur() async{
    try{
      var donnee=await supabase
          .from('utilisateurs_beflemi_kouadio')
              .select('*').eq('nom_complet', nom_complet.text).eq('mot_de_passe', mot_de_passe.text);
      print(donnee[0]);
      Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>CommunautePage()), (route)=>false);
    }
    catch(e){
      message_d_erreur();
    }
  }

  void verification_de_saisie(){

    if(nom_complet.text.trim().isEmpty){
      setState(() {
        bordure1=false;
      });
    }
    if(nom_complet.text.trim().isNotEmpty){
      setState(() {
        bordure1=true;
      });
    }
    if(mot_de_passe.text.trim().isEmpty || mot_de_passe.text.contains(" ")){
      setState(() {
        bordure2=false;
      });
    }
    if(!mot_de_passe.text.trim().isEmpty && !mot_de_passe.text.contains(" ")){
      setState(() {
        bordure2=true;
      });
    }
    if(nom_complet.text.trim().isNotEmpty && !mot_de_passe.text.trim().isEmpty && !mot_de_passe.text.contains(" ")){
      ajouter_utilisateur();

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5AA6),
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width *1,
                      height: MediaQuery.of(context).size.height *0.04
                  ),
                  Image.asset("assets/images/app logo apk 2.png",height: MediaQuery.of(context).size.height *0.4,width: MediaQuery.of(context).size.height *0.4,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn().shakeX(delay: Duration(seconds: 1),duration: Duration(milliseconds: 300)),

                  SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    child: TextFormField(

                      controller: nom_complet,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.sort_by_alpha,color: Colors.white),
                          label: Text("Nom complet",style: TextStyle(fontFamily: "Poppins",color: bordure1?Colors.white:Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: bordure1?Colors.white60:Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: bordure1?Colors.white60:Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          )
                      ),
                    ),
                  ).animate().fadeIn().scale(delay:Duration(milliseconds: 200),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                  SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.9,
                    child: TextFormField(
                      controller: mot_de_passe,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Colors.white),
                          label: Text("Mot de passe",style: TextStyle(fontFamily: "Poppins",color: bordure2?Colors.white:Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: bordure2?Colors.white60:Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: bordure2?Colors.white60:Colors.red),
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                          )
                      ),
                    ),
                  ).animate().fadeIn().scale(delay:Duration(milliseconds: 300),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                  SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                  GestureDetector(
                    onTap: (){
                      message_d_erreur();
                      verification_de_saisie();
                    },
                    child:
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height *0.06,
                    width: MediaQuery.of(context).size.width *0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.2))
                    ),
                    child: Text("Se connecter",style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.043,fontFamily: "Poppins",color: Color(0xFF2E5AA6)),),
                  ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.03),

                  Container(
                    width: MediaQuery.of(context).size.width *0.6,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFF2E5AA6),width:MediaQuery.of(context).size.width *0.0065 )
                        )
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.06),
                  Container(
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width *1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("Pas encore de \ncompte ? ",textAlign: TextAlign.center,style: TextStyle(fontFamily: "poppins",fontSize: MediaQuery.of(context).size.width *0.043,color: Colors.white60),),
                            TextButton(onPressed: (){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>InscriptionPage()), (route)=>false);
                              }, child: Text("s'inscrire",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.043),))
                          ]
                      )
                  ).animate().fadeIn().scale(delay:Duration(milliseconds: 300),begin: Offset(1.3, 1.3),end: Offset(1, 1)).shakeX(delay: Duration(milliseconds: 1000),duration: Duration(milliseconds: 300)),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.36),
                child: Text("BEFLÊMI KOUADIO",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: Colors.white),),
              ),
              Container(
                  alignment: Alignment.center,
                  child:Container(
                    height:MediaQuery.of(context).size.height *0.05,
                    width: MediaQuery.of(context).size.width *0.35,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color:Colors.white ,width:MediaQuery.of(context).size.width *0.007 ))
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06),
                    child: Text("Connexion",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color:Colors.white),),)

              )
            ],
          )
      )
    );
  }
}
