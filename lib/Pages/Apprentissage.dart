import 'package:app1/Pages/Entrainement.dart';
import 'package:app1/Pages/Entrainement2.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class ApprentissagePage extends StatefulWidget {
  const ApprentissagePage({super.key});

  @override
  State<ApprentissagePage> createState() => _ApprentissagePageState();
}

class _ApprentissagePageState extends State<ApprentissagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.045,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()), (route)=>false);

                    }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,)),
                    SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                    Text("Beflêmi Kouadio",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.06),)
                    ,SizedBox(width: MediaQuery.of(context).size.width *0.2,),
                  ],
                ),
                Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.2),
                      width:MediaQuery.of(context).size.width *0.5,
                      child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Text("Niveau : ",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06)),
                              Text("0",style: TextStyle(color: Colors.red,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06)),
                            ],
                          ))
                      ],
                    ),),
                    SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                    Container(
                      width:MediaQuery.of(context).size.width *0.5,
                      child: Column(
                        children: [
                          LinearProgressIndicator(
                            color: Colors.green,
                            value: 0.6,
                          ),
                          
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width *0.15,
                          height: MediaQuery.of(context).size.height *0.002,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E5AA6)
                          ),
                        ),
                        Container(
                          child: Text("Apprentissage du \nbaoulé",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.043),),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width *0.15,
                          height: MediaQuery.of(context).size.height *0.002,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E5AA6)
                          ),
                        ),
                      ],
                    ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height *0.038,),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EntrainementPage()));
                      },
                      child:
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                height: MediaQuery.of(context).size.height *0.13,
                                width: MediaQuery.of(context).size.height *0.13,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                ),
                                child: Image.asset("assets/images/Hello.gif"),
                              ),
                              GestureDetector(
                                child:
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child:Text("Salutations / bases",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04)),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child: Text("Entrainement",style: TextStyle(color: Colors.black,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04)),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child: Text("Niveau recommandé",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child:Row(
                                      children: [
                                        Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                      ],
                                      )),
                                ],
                              ))
                            ],
                          ),

                        ),




                      ],
                    ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height *0.015,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Entrainement2Page()));
                      },
                      child:
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                height: MediaQuery.of(context).size.height *0.13,
                                width: MediaQuery.of(context).size.height *0.13,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                                ),
                                child: Image.asset("assets/images/Teacher student.gif"),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child:Text("Présentations",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04)),),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child: Text("Entrainement",style: TextStyle(color: Colors.black,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04)),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *0.6,
                                    alignment: AlignmentDirectional.topStart,
                                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                    child: Text("Niveau recommandé",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *0.6,
                                      alignment: AlignmentDirectional.topStart,
                                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.04),
                                      child:Row(
                                        children: [
                                          Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.15,
                      height: MediaQuery.of(context).size.height *0.002,
                      decoration: BoxDecoration(
                          color: Color(0xFF2E5AA6)
                      ),
                    ),
                    Container(
                      child: Text("Quiz",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.043),),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *0.15,
                      height: MediaQuery.of(context).size.height *0.002,
                      decoration: BoxDecoration(
                          color: Color(0xFF2E5AA6),
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *0.3,
                            width: MediaQuery.of(context).size.width *0.55,
                            decoration: BoxDecoration(
                              color: Color(0xFF2E5AA6),
                                border: Border.all(
                                    color: Color(0xFF2E5AA6)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
                            ),
                            child: Lottie.asset("assets/animations/Error State - Dog.json"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.02),
                            child: Text("Débutant",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.23),
                            child: Text("Niveau : ",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.26),
                            child: Icon(Icons.star,color: CupertinoColors.systemYellow,)
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                      Stack(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                          Container(
                            height: MediaQuery.of(context).size.height *0.3,
                            width: MediaQuery.of(context).size.width *0.55,
                            decoration: BoxDecoration(
                                color: Color(0xFF2E5AA6),
                                border: Border.all(
                                  color: Color(0xFF2E5AA6)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
                            ),
                            child: Lottie.asset("assets/animations/Angry Rrrrr!.json"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.02),
                            child: Text("Intermédiaire",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.23),
                            child: Text("Niveau : ",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.26),
                              child: Row(
    children: [
      Icon(Icons.star,color: CupertinoColors.systemYellow,),
      Icon(Icons.star,color: CupertinoColors.systemYellow,),
      Icon(Icons.star,color: CupertinoColors.systemYellow,),
    ],
    )
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *0.3,
                            width: MediaQuery.of(context).size.width *0.55,
                            decoration: BoxDecoration(
                                color: Color(0xFF2E5AA6),
                                border: Border.all(
                                    color: Color(0xFF2E5AA6)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.05))
                            ),
                            child: Lottie.asset("assets/animations/Bull.json"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.02),
                            child: Text("Nivo dan",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.23),
                            child: Text("Niveau : ",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.03,top: MediaQuery.of(context).size.height *0.26),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                  Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                  Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                  Icon(Icons.star,color: CupertinoColors.systemYellow,),
                                ],
                              )
                          )
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                    ],
                  ),
                )
                ,
                SizedBox(height: MediaQuery.of(context).size.height *0.1,)
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
              child: Image.asset("assets/images/logo apk.png",height: MediaQuery.of(context).size.height *0.3,width: MediaQuery.of(context).size.width *0.6,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn(),
            ),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height *0.115,left: MediaQuery.of(context).size.width *0.7 ),
              child: Row(
                children: [
                  Text(" 0",style: TextStyle(color: Colors.red,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                  Text(" XP",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                  ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
