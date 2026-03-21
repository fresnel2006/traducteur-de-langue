import 'package:app1/Pages/BienvenueApprentissage.dart';
import 'package:app1/Pages/Parametre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height *0.25,
                  decoration: BoxDecoration(
                      color:Color(0xFF2E5AA6),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(MediaQuery.of(context).size.width *0.2)
                    )
                  ),


                ),

                SizedBox(height: MediaQuery.of(context).size.height *0.04,),

                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                          Icon(Icons.account_circle,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                          SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                          Text("Profil",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                        ],
                      )
                  )
                  ,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                          Icon(Icons.list,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                          SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                          Text("Historique",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                        ],
                      )
                  )
                  ,),
                GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height *0.07,
                        width: MediaQuery.of(context).size.width *1,

                        child: Row(

                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                            Icon(Icons.translate,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                            SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                            Text("Traducteur",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                            ],
                        )
                    )
                    ,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BienvenueApprentissagePage()), (route)=>false);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                          Icon(Icons.school_outlined,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                          SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                          Text("Apprentissage",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                          ],
                      )
                  )
                  ,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ParametrePage()), (route)=>false);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                          Icon(Icons.settings,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                          SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                          Text("Paramètre",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                        ],
                      )
                  )
                  ,),
                SizedBox(height: MediaQuery.of(context).size.height *0.08,),
                Container(child: Lottie.asset("assets/animations/01_Finishig Studies.json",width: MediaQuery.of(context).size.width *0.62),)
                ]
            )
          ],
        ),
      ),
    );
  }
}
