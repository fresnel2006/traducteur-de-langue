import 'package:app1/Pages/Bienvenue.dart';
import 'package:app1/Pages/Communaute.dart';
import 'package:app1/Pages/Inscription%20et%20connexion/Connexion.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {

  var nom_complet=TextEditingController();
  var nom_d_utilisateur=TextEditingController();
  var mot_de_passe=TextEditingController();
  var confirmation_mot_de_passe=TextEditingController();

  bool bordure1=true;
  bool bordure2=true;
  bool bordure3=true;
  bool bordure4=true;

  Future <void> ajouter_utilisateur() async{
    try{
    await supabase
        .from('utilisateurs_beflemi_kouadio')
        .insert({'nom_complet': nom_complet.text, 'mot_de_passe': mot_de_passe.text,'nom_utilisateur': nom_d_utilisateur.text,'niveau':0});
        Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>CommunautePage()), (route)=>false);
    }
  catch(e){
      message_d_erreur();
  }
  }

  Future <void>  sauvegarde_nom_utilisateur() async{
    var perfs=await SharedPreferences.getInstance();
    perfs.setString("nom_d_utilisateur", nom_d_utilisateur.text);
  }

  void message_d_erreur(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Color(0xFF2E5AA6),duration: Duration(seconds: 1),content:
    Container(
      height: MediaQuery.of(context).size.height *0.1,
      decoration:BoxDecoration(
          color: Color(0xFF2E5AA6)
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width *0.02,),
          Icon(Icons.dangerous_outlined,color: Colors.red,size: MediaQuery.of(context).size.width *0.12,),
          Text("Vérifier votre connexion internet",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),)
        ],
      ),
    )
    ));
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
    if(nom_d_utilisateur.text.trim().isEmpty){
      setState(() {
        bordure2=false;
      });
    }
    if(nom_d_utilisateur.text.trim().isNotEmpty){
      setState(() {
        bordure2=true;
      });
    }
    if(mot_de_passe.text.trim().isEmpty || mot_de_passe.text.contains(" ")){
      setState(() {
        bordure3=false;
      });
    }
    if(!mot_de_passe.text.trim().isEmpty && !mot_de_passe.text.contains(" ")){
      setState(() {
        bordure3=true;
      });
    }
    if(confirmation_mot_de_passe.text!=mot_de_passe.text){
      setState(() {
        bordure4=false;
      });

    }
    if(confirmation_mot_de_passe.text==mot_de_passe.text){
      setState(() {
        bordure4=true;
      });
    }
    if(nom_d_utilisateur.text.trim().isNotEmpty && nom_d_utilisateur.text.trim().isNotEmpty && !mot_de_passe.text.trim().isEmpty && !mot_de_passe.text.contains(" ") && confirmation_mot_de_passe.text==mot_de_passe.text){
      ajouter_utilisateur();
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *1,
                    height: MediaQuery.of(context).size.height *0.04
                ),
                Image.asset("assets/images/logo apk.png",height: MediaQuery.of(context).size.height *0.4,width: MediaQuery.of(context).size.height *0.4,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn().shakeX(delay: Duration(seconds: 1),duration: Duration(milliseconds: 300)),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    controller: nom_complet,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.sort_by_alpha,color: Color(0xFF2E5AA6)),
                    label: Text("Nom complet",style: TextStyle(fontFamily: "Poppins",color: bordure1?Color(0xFF2E5AA6):Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: bordure1?Colors.black:Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: bordure1?Colors.black:Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    )
                  ),
                ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1200)).scale(delay:Duration(milliseconds: 1300),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(

                    controller: nom_d_utilisateur,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.sort_by_alpha,color: Color(0xFF2E5AA6)),
                        label: Text("Nom d'utilisateur",style: TextStyle(fontFamily: "Poppins",color: bordure2?Color(0xFF2E5AA6):Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure2?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure2?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1300)).scale(delay:Duration(milliseconds: 1400),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    controller: mot_de_passe,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF2E5AA6)),
                        label: Text("Mot de passe",style: TextStyle(fontFamily: "Poppins",color: bordure3?Color(0xFF2E5AA6):Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure3?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure3?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1400)).scale(delay:Duration(milliseconds: 1500),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    controller: confirmation_mot_de_passe,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF2E5AA6)),
                        label: Text("Confirmer",style: TextStyle(fontFamily: "Poppins",color: bordure4?Color(0xFF2E5AA6):Colors.red,fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure4?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bordure4?Colors.black:Colors.red),
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1500)).scale(delay:Duration(milliseconds: 1600),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                GestureDetector(
                  onTap: (){

verification_de_saisie();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height *0.06,
                    width: MediaQuery.of(context).size.width *0.4,
                    decoration: BoxDecoration(
                        color: Color(0xFF2E5AA6),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.2))
                    ),
                    child: Text("S'incrire",style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.045,fontFamily: "Poppins",color: Colors.white),),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1600))
                ,
                SizedBox(height: MediaQuery.of(context).size.height *0.03),

                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xFF2E5AA6),width:MediaQuery.of(context).size.width *0.0065 )
                    )
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 2000)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02),
                Container(
                  alignment: Alignment.center,
                  width:MediaQuery.of(context).size.width *1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("Déjà un compte ? ",style: TextStyle(fontFamily: "poppins",fontSize: MediaQuery.of(context).size.width *0.043),),
                      TextButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ConnexionPage()), (route)=>false);
                      }, child: Text("se connecter",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.043),))
                    ]
                  )
                ).animate().fadeIn(delay: Duration(milliseconds: 2000)).shakeX()
                ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.36),
              child: Text("BEFLÊMI KOUADIO",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: Color(0xFF2E5AA6)),),
            ).animate().fadeIn(delay: Duration(milliseconds: 1800)),
Container(
      alignment: Alignment.center,
      child:Container(
        height:MediaQuery.of(context).size.height *0.05,
        width: MediaQuery.of(context).size.width *0.35,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color:Color(0xFF2E5AA6) ,width:MediaQuery.of(context).size.width *0.007 ))
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06),
        child: Text("Inscription",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: Color(0xFF2E5AA6)),),)

  ).animate().fadeIn(delay: Duration(milliseconds: 1900)),


            ],
        )
      ),
    );
  }
}
