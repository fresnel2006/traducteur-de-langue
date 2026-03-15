import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DebutantPage extends StatefulWidget {
  const DebutantPage({super.key});

  @override
  State<DebutantPage> createState() => _DebutantPageState();
}

class _DebutantPageState extends State<DebutantPage> {


  void note_xp(){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.transparent,duration: Duration(milliseconds: 1500),content: Container(
      alignment: Alignment.center,
        height: MediaQuery.of(context).size.height *0.12,
      width: MediaQuery.of(context).size.width *0.9,
      decoration: BoxDecoration(
          color:Color(0xFF2E5AA6),
          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.1))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bonne reponse :   ",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
              Text("0 sur 4",style: TextStyle(color: Colors.red,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06))
            ],
          ),
          Text("+  0 XP",style: TextStyle(color: Colors.red,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06))
        ],
      ),
    )));
      Navigator.pop(context);
  }
  int quiz1=1;
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
                        Text("Quiz débutant",style: TextStyle(fontFamily: "Poppins",color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.06),)
                        ,
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
                      quiz1==1?Text("Si tu croises quelqu'un le matin,\nquelle est la salutation la plus courante ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                      :quiz1==2?Text("Que répond-on systématiquement pour accepter une salutation ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                      :quiz1==3?Text("Comment demande-t-on « Comment va la famille ? »",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),)
                      :Text("Que signifie « Be flè mi... » ?",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {

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
                    //premiere question
                    SizedBox(height: MediaQuery.of(context).size.height *0.2,),
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
                                      Text("Ahou",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                      Text("N'zue mo",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                      Text("An'nin",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                      Text("Dibi",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                        Text("Kôni",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                        Text("Yao",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                        Text("Mo",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                          Text("Akwaba",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                        Text("Wan yé",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                        Text("Sassé kpa",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                        Text("Ba'n mou kôni",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                    quiz1=4;
                                  });
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
                                          Text("Awlo'n mou \nkôni",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                    setState(() {
                                      note_xp();
                                    });
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
                                            Text("On m'appelle",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      note_xp();
                                    });
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
                                            Text("Je suis de",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)

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
                                      note_xp();
                                    });
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
                                            Text("Je cherche",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
                                        note_xp();
                                      });
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
                                              Text("Je vais",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width *0.05,fontFamily: "Poppins"),)
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
