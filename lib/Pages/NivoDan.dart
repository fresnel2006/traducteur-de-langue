import 'package:app1/Pages/Apprentissage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NivodanPage extends StatefulWidget {
  const NivodanPage({super.key});

  @override
  State<NivodanPage> createState() => _NivodanPageState();
}

class _NivodanPageState extends State<NivodanPage> {
  int quiz1=1;
  int bonne_reponse=0;
  int mauvaise_reponse=0;
  void reponse_correct(){
    setState(() {
      bonne_reponse=1;
    });
  }
  void reponse_mauvaise(){
    setState(() {
      mauvaise_reponse=1;
    });
  }
  void note_xp(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.transparent,duration: Duration(milliseconds: 1500),content: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height *0.12,
        width: MediaQuery.of(context).size.width *0.9,
        decoration: BoxDecoration(
            color:Color(0xFF2E5AA6),
            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
        ),
        child:  ListTile(
          leading: Icon(CupertinoIcons.checkmark_seal_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.09,),
          title:
          Row(
            children: [
              Text("Bonne reponse :  ",style: TextStyle(color: Colors.white60,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              Text("0 sur 4",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
            ],
          ),
          subtitle:Row(
            children: [
              Text("Gagné : ",style: TextStyle(color: Colors.white60,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              Text("0 XP",style: TextStyle(color: Colors.red.shade300,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
            ],
          ),)
    )));
    Navigator.pop(context);
    setState(() {
      xp=xp+(bonne_reponse*1.5);
    });
    sauvegarder_donnee();
  }
  Future <void> sauvegarder_donnee() async{
    final perfs=await SharedPreferences.getInstance();
    await perfs.setDouble("xp", xp);
  }
  var xp;


  Future <void> charger_donnee() async{
    final perfs=await SharedPreferences.getInstance();
    setState(() {
      xp=perfs.getDouble("xp")??0;
    });
  }
  @override
  void initState(){
    super.initState();
    charger_donnee();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2E5AA6),
        body:
        SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height *0.045,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                            child:
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                          ),
                          Text("Quiz Pro",style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.06),),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                            child:
                            IconButton(onPressed: (){
                              Navigator.pop(context);
                            }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.transparent,size: MediaQuery.of(context).size.width *0.07,)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height *0.07,),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width *0.9,
                        height: MediaQuery.of(context).size.height *0.25,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                        ),
                        child:
                        quiz1==1?Text("« Ba kan ga » s'adresse à qui ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                            :quiz1==2?Text("Que signifie littéralement « Nannan » ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                            :quiz1==3?Text("Verbe pour dire « Habiter » (résidence) ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                            :Text("Sens de « N’zue o koumi » ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                quiz1=1;
                              });
                            },
                            child:
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width *0.2,
                              width: MediaQuery.of(context).size.width *0.2,
                              decoration: BoxDecoration(
                                  color: quiz1==1?Colors.white:Color(0xFF2E5AA6),
                                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                              ),
                              child: Text("1",style: TextStyle(color: quiz1==1?Color(0xFF2E5AA6):Colors.white,fontSize: MediaQuery.of(context).size.width *0.07,fontFamily: "Poppins"),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                quiz1=2;
                              });
                            },
                            child:
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width *0.2,
                              width: MediaQuery.of(context).size.width *0.2,
                              decoration: BoxDecoration(
                                  color: quiz1==2?Colors.white:Color(0xFF2E5AA6),
                                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                              ),
                              child: Text("2",style: TextStyle(color: quiz1==2?Color(0xFF2E5AA6):Colors.white,fontSize: MediaQuery.of(context).size.width *0.07,fontFamily: "Poppins"),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                quiz1=3;
                              });
                            },
                            child:
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width *0.2,
                              width: MediaQuery.of(context).size.width *0.2,
                              decoration: BoxDecoration(
                                  color: quiz1==3?Colors.white:Color(0xFF2E5AA6),
                                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                              ),
                              child: Text("3",style: TextStyle(color: quiz1==3?Color(0xFF2E5AA6):Colors.white,fontSize: MediaQuery.of(context).size.width *0.07,fontFamily: "Poppins"),),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                quiz1=4;
                              });
                            },
                            child:
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.width *0.2,
                              width: MediaQuery.of(context).size.width *0.2,
                              decoration: BoxDecoration(
                                  color: quiz1==4?Colors.white:Color(0xFF2E5AA6),
                                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                              ),
                              child: Text("4",style: TextStyle(color: quiz1==4?Color(0xFF2E5AA6):Colors.white,fontSize: MediaQuery.of(context).size.width *0.07,fontFamily: "Poppins"),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height *0.033,),
                      Container(
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child:
                                Row(
                                  children: [
                                    Text(bonne_reponse.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.1,color: Colors.white54,fontFamily: "Poppins"),),
                                    SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                                    Icon(CupertinoIcons.checkmark_seal_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.15)
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *0.1,
                                width: MediaQuery.of(context).size.width *0.01,
                                decoration: BoxDecoration(
                                    color: Colors.white60
                                ),
                              ),
                              Container(
                                  child: Row(
                                    children: [
                                      Text(mauvaise_reponse.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.1,color: Colors.white54,fontFamily: "Poppins")),
                                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                                      Icon(Icons.close_rounded,color: Colors.red.shade400,size: MediaQuery.of(context).size.width *0.15,)
                                    ],
                                  )
                              )

                            ],
                          )
                      ),
                      //premiere question
                      SizedBox(height: MediaQuery.of(context).size.height *0.06,),

                      quiz1==1?Row(
                        spacing: MediaQuery.of(context).size.height *0.01,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=2;
                                  });
                                  reponse_correct();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("un enfant",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=2;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("un chef",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=2;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("une femme",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ,
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      quiz1=2;
                                    });
                                    reponse_mauvaise();
                                  },
                                  child:
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *0.083,
                                    width: MediaQuery.of(context).size.width *0.45,
                                    decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      spacing: MediaQuery.of(context).size.width *0.04,
                                      children: [
                                        Row(
                                          children: [
                                            Text("un homme",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              )
                            ],
                          )


                        ],
                      ):
                      quiz1==2?Row(
                        spacing: MediaQuery.of(context).size.height *0.01,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=3;
                                  });
                                  reponse_correct();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Grand père",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=3;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Bonne nuit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=3;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Dors Bien",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ,
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      quiz1=3;
                                    });
                                    reponse_mauvaise();
                                  },
                                  child:
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *0.083,
                                    width: MediaQuery.of(context).size.width *0.45,
                                    decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      spacing: MediaQuery.of(context).size.width *0.04,
                                      children: [
                                        Row(
                                          children: [
                                            Text("A demain",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              )
                            ],
                          )


                        ],
                      ):
                      quiz1==3?Row(
                        spacing: MediaQuery.of(context).size.height *0.01,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=4;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Fi",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=4;
                                  });
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Ti",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    quiz1=4;
                                  });
                                  reponse_correct();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Tran",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      quiz1=4;
                                    });
                                    reponse_mauvaise();
                                  },
                                  child:
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *0.083,
                                    width: MediaQuery.of(context).size.width *0.45,
                                    decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      spacing: MediaQuery.of(context).size.width *0.04,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Kô",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              )
                            ],
                          )
                        ],
                      ):
                      quiz1==4?Row(
                        spacing: MediaQuery.of(context).size.height *0.01,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  note_xp();
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Merci pour\nl'eau",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  note_xp();
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Bon travail",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            spacing: MediaQuery.of(context).size.width *0.02,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  note_xp();
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
                                  reponse_mauvaise();
                                },
                                child:
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context).size.height *0.083,
                                  width: MediaQuery.of(context).size.width *0.45,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    spacing: MediaQuery.of(context).size.width *0.04,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Il pleut",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ,
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    note_xp();
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
                                    reponse_correct();
                                  },
                                  child:
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height *0.083,
                                    width: MediaQuery.of(context).size.width *0.45,
                                    decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      spacing: MediaQuery.of(context).size.width *0.04,
                                      children: [
                                        Row(
                                          children: [
                                            Text("J'ai soif",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                              )
                            ],
                          )


                        ],
                      ):Text("")

                    ],
                  )

                ],
              )
            ],
          ),
        )
    );
  }
}
