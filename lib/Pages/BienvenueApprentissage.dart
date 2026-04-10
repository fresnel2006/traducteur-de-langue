import 'package:app1/Pages/Apprentissage.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BienvenueApprentissagePage extends StatefulWidget {
  const BienvenueApprentissagePage({super.key});

  @override
  State<BienvenueApprentissagePage> createState() => _BienvenueApprentissagePageState();
}

class _BienvenueApprentissagePageState extends State<BienvenueApprentissagePage> {

  int index=1;
  var pageapprentissage=false;

  void changer_de_page(){
    if(index>=3){
      if(index==3){
        sauvegarde_index();
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
      }
      setState(() {
        index=1;
      });
    }else{
      setState(() {
        index=index+1;
      });
    }
  }
  Future <void> sauvegarde_index() async{
    final perfs=await SharedPreferences.getInstance();
    perfs.setBool("pageapprentissage", true);
  }
  Future <void> recuperer_index() async{
    final perfs=await SharedPreferences.getInstance();
    setState(() {
      pageapprentissage=perfs.getBool("pageapprentissage")??false;
    });
  }
  @override
  void initState(){
    super.initState();
    recuperer_index();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: pageapprentissage?ApprentissagePage():SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06,left: MediaQuery.of(context).size.height *0.015),
              height: MediaQuery.of(context).size.height *0.08,
              width: MediaQuery.of(context).size.height *0.08,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
              ),
              child: IconButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()), (route)=>false);
              }, icon: Icon(Icons.arrow_back)),
            ),
            Column(
              children: [
                Container(width: MediaQuery.of(context).size.width *1,),
                SizedBox(height: MediaQuery.of(context).size.height *0.17,),
                index==1?Container(
                  child: Lottie.asset("assets/animations/learning.json",height: MediaQuery.of(context).size.height *0.23),
                ).animate().fadeIn(delay: Duration(milliseconds: 200)):index==2?Container(
                  child: Lottie.asset("assets/animations/Appointment booking with smartphone.json",height: MediaQuery.of(context).size.height *0.23),
                ).animate().fadeIn(delay: Duration(milliseconds: 200)):
                index==3?Container(
                  child: Lottie.asset("assets/animations/Linkedin Career Celebration Reaction Recreated.json",repeat:false,height: MediaQuery.of(context).size.height *0.23,width: MediaQuery.of(context).size.width *0.75),
                ).animate().fadeIn(delay: Duration(milliseconds: 200)):Text(""),
                SizedBox(height: MediaQuery.of(context).size.height *0.035,),
                index==1?Container(
                  child: Text("Apprennez le Baoulé \nSur l'application EDTECH\nBeflêmi kouadio",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.055,color: Colors.black),),
                ).animate().fadeIn(delay: Duration(milliseconds: 400)):index==2?Container(
                  child: Text("Faite des quiz afin de \ngagner des points",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.055,color: Colors.black),),
                ).animate().fadeIn(delay: Duration(milliseconds: 400)):index==3?Container(
                  child: Text("Ôti kpa sô\nPrêt a commencer",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.055,color: Colors.black),),
                ).animate().fadeIn(delay: Duration(milliseconds: 400)):Text(""),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                index==1?Container(child: Text("Beflêmi Kouadio propose\ndes méthodes d'apprentissage \nrapide et éfficace",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Colors.black45,fontSize: MediaQuery.of(context).size.width *0.04),),
                ).animate().fadeIn(delay: Duration(milliseconds: 600)):index==2?Container(child: Text("Relevez le défi : \nrépondez aux questions \nen langue baoulé et \ncumulez un maximum de points !",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Colors.black45,fontSize: MediaQuery.of(context).size.width *0.04),),
                ).animate().fadeIn(delay: Duration(milliseconds: 600)):index==3?Container(child: Text("Bla yé Kô\nvient et allons s'y\net apprennons le baoulé",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Colors.black45,fontSize: MediaQuery.of(context).size.width *0.04),),)
                    .animate().fadeIn(delay: Duration(milliseconds: 600)):Text(""),
              ],
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: MediaQuery.of(context).size.width *0.01,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height *0.015,
                      width: MediaQuery.of(context).size.height *0.015,
                      decoration: BoxDecoration(
                          color: index==1?Colors.blue.shade300:Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *0.015,
                      width: MediaQuery.of(context).size.height *0.015,
                      decoration: BoxDecoration(
                          color: index==2?Colors.blue.shade300:Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *0.015,
                      width: MediaQuery.of(context).size.height *0.015,
                      decoration: BoxDecoration(
                          color: index==3?Colors.blue.shade300:Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.06,),
                Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width *0.2,
                    width: MediaQuery.of(context).size.width *0.3,
                    decoration: BoxDecoration(
                        color: Color(0xFF2E5AA6),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                    ),
                    child: TextButton(onPressed: (){
                      changer_de_page();

                    }, child: index==3?Icon(Icons.arrow_forward,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,):Text("Suivant",style: TextStyle(fontFamily: "Poppins",color: Colors.white),))
                ),
              ],)
          ],
        ),
      ),
    );
  }
}
