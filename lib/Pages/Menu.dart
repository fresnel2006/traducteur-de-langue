import 'package:app1/Pages/BienvenueApprentissage.dart';
import 'package:app1/Pages/Parametre.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:app1/Pages/Traducteur.dart';
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
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                      Row(
                        children: [
                          Container(
                              alignment: AlignmentDirectional.topStart,
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *0.3,
                                child: Text("Arè ho",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                              )
                          ),
                          Icon(CupertinoIcons.hand_point_right_fill,size: MediaQuery.of(context).size.width *0.12,color: Colors.white,)
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height *0.015,),

                      ListTile(
                        leading: Icon(Icons.account_circle,color: Colors.white,size: MediaQuery.of(context).size.width *0.1,),
                        title: Text("Traore",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05)),
                        subtitle: Text("Ange fresnel",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05)),
                      )
                      
                    ],
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                              Icon(Icons.account_circle,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                              SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                              Text("Profil",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),

                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width *0.1,
                            child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))

                          )
                          ],
                      )
                  )
                  ,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(

                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(

                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                              Icon(Icons.list,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                              SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                              Text("Historique",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),

                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width *0.1,
                              child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))

                          )
                        ],
                      )
                  )
                  ,),
                GestureDetector(
                    onTap: (){

                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>TraducteurPage()), (route)=>false);

                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height *0.07,
                        width: MediaQuery.of(context).size.width *1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                                Icon(Icons.translate,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                                SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                                Text("Traducteur",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),

                              ],
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *0.1,
                                child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))

                            )
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                              Icon(Icons.school_outlined,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                              SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                              Text("Apprentissage",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),

                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width *0.1,
                              child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))
                          )

                        ],
                      )
                  )
                  ,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()), (route)=>false);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                              Icon(CupertinoIcons.globe,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                              SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                              Text("Communauté",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width *0.1,
                              child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))

                          )
                          ],
                      )
                  )
                  ,)
                ,
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ParametrePage()), (route)=>false);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width: MediaQuery.of(context).size.width *1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                              Icon(Icons.settings,color:Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,),
                              SizedBox(width: MediaQuery.of(context).size.width *0.06,),
                              Text("Paramètre",style: TextStyle(fontFamily: "Poppins",color:Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.053),),
                            ],
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width *0.1,
                              child:Icon(CupertinoIcons.arrowshape_turn_up_right,color:Color(0xFF2E5AA6))

                          )
                         ],
                      )
                  )
                  ,),
                SizedBox(height: MediaQuery.of(context).size.height *0.08,),
                ]
            )
          ],
        ),
      ),
    );
  }
}
