import 'package:app1/Pages/Bienvenue.dart';
import 'package:app1/Pages/Connexion.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {


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
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.sort_by_alpha,color: Color(0xFF2E5AA6)),
                    label: Text("Nom complet",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.045),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    )
                  ),
                ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1200)).scale(delay:Duration(milliseconds: 1300),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.sort_by_alpha,color: Color(0xFF2E5AA6)),
                        label: Text("Nom d'utilisateur",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1300)).scale(delay:Duration(milliseconds: 1400),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF2E5AA6)),
                        label: Text("Mot de passe",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1400)).scale(delay:Duration(milliseconds: 1500),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF2E5AA6)),
                        label: Text("Confirmer",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.045),),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                        )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1500)).scale(delay:Duration(milliseconds: 1600),begin: Offset(1.3, 1.3),end: Offset(1, 1)),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                GestureDetector(
                  onTap: (){
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BienvenuePage()), (route)=>false);
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
