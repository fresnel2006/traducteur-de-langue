import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lottie/lottie.dart';

class CommunautePage extends StatefulWidget {
  const CommunautePage({super.key});

  @override
  State<CommunautePage> createState() => _CommunautePageState();
}

class _CommunautePageState extends State<CommunautePage> {

  var index_chat=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //l'entete
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.15,
                      child: IconButton(onPressed: (){
                        ZoomDrawer.of(context)!.toggle();
                      }, icon: Icon(Icons.menu_open_outlined,color: Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.08,)),

                    )
                    ,Container(
                      width: MediaQuery.of(context).size.width *0.55,
                      alignment: Alignment.center,
                      child: Text("Chat\nCommunautaire",style: TextStyle(color: Color(0xFF2E5AA6),fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05),),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.025,),
                Container(
                  height: MediaQuery.of(context).size.height *0.06,
                  width: MediaQuery.of(context).size.width *0.8,
                  child:TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search,color:Color(0xFF2E5AA6)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFF2E5AA6) ),
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFF2E5AA6) ),
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                      ),
                      hint: Text("Recherche...",style: TextStyle(color: Colors.black45,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04),)

                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.035,),

                Container(
                  width: MediaQuery.of(context).size.width *0.9,
                  height: MediaQuery.of(context).size.height *0.04,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.02))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index_chat==0?
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index_chat=0;
                          });
                        },
                        child:
                      Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width *0.3,
                        height: MediaQuery.of(context).size.height *0.04,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.02))
                        ),
                        child: Text("Personnel",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6)),),
                      )):
    GestureDetector(
      onTap: (){
        setState(() {
          index_chat=0;
        });
      },
    child:
    Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        child: Text("Personnel",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6)),),
                      ),
    ),
                      index_chat==1?
    GestureDetector(
        onTap: (){
          setState(() {
            index_chat=1;
          });
        },
    child:
    Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width *0.3,
                        height: MediaQuery.of(context).size.height *0.04,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.02))
                        ),
                        child: Text("Groupes",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6))),
                      )):
    GestureDetector(
      onTap: (){
        setState(() {
          index_chat=1;
        });
      },
    child:
    Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        child: Text("Groupes",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6))),
                      ),),
                      index_chat==2?
    GestureDetector(
        onTap: (){
          setState(() {
            index_chat=2;
          });
        },
    child:
    Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width *0.34,
                        height: MediaQuery.of(context).size.height *0.04,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.02))
                        ),
                        child: Text("Professionnels",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6))),
                      )):
    GestureDetector(
        onTap: (){
          setState(() {
            index_chat=2;
          });
        },
    child:
    Container(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02,left:MediaQuery.of(context).size.width *0.02),
                        child: Text("Professionnels",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6))),
                      ))
                    ],
                  ),
                ),
                index_chat==0?SizedBox(height: MediaQuery.of(context).size.height *0.07,):SizedBox(),

                index_chat==0?Lottie.asset("assets/animations/Empty red.json",height: MediaQuery.of(context).size.height *0.3):SizedBox(),
                index_chat==0?Container(
                  child: Text("Bienvenue sur le\nchat communautaire",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.04,color: Colors.black87),),
                ):SizedBox(),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                index_chat==0?Container(
                  width: MediaQuery.of(context).size.width *0.4,
                  height: MediaQuery.of(context).size.height *0.04,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,color: Colors.black38),
                      Container(
                        child: Text(" Ajouter un chat",style: TextStyle(fontFamily: "Poppins",color: Colors.black38),),
                      )
                    ],
                  ),
                ):SizedBox(),
(index_chat==1) || (index_chat==2)?Container(
  child: Column(
    children: [
      Lottie.asset("assets/animations/Empty Notifications.json",height: MediaQuery.of(context).size.height *0.3),
      Container(
        child: Text("Aucun groupe \npour le moment",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6)),
      ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.04,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Colors.deepOrange.shade200,
              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
            ),
            width:MediaQuery.of(context).size.width *0.5,
              height: MediaQuery.of(context).size.height *0.06,
              child: Text("Une notification\nvous sera envoyé",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),),

              )
          ),

        ],
      )

    ],
  ),
).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)):Text("")
              ],
            ),
            index_chat==0?Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.85,left: MediaQuery.of(context).size.width *0.57),
              child:
            Row(
              children: [
                Container(
                  child: Icon(CupertinoIcons.arrowshape_turn_up_right,size: MediaQuery.of(context).size.width *0.12,color: Color(0xFF2E5AA6)),
                ),
                SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width *0.21,
                  width: MediaQuery.of(context).size.width *0.21,
                  decoration: BoxDecoration(
                      color: Color(0xFF2E5AA6),
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1))
                  ),
                  child: IconButton(onPressed: (){

                  }, icon: Icon(Icons.message,size: MediaQuery.of(context).size.width *0.09,color: Colors.white,)),
                )
              ],
            )
            ):Text("")
          ],
        ),
      ),
    );
  }
}
