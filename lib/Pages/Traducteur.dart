import 'package:app1/Pages/Communaute.dart';
import 'package:app1/Pages/Switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TraducteurPage extends StatefulWidget {
  const TraducteurPage({super.key});

  @override
  State<TraducteurPage> createState() => _TraducteurPageState();
}

class _TraducteurPageState extends State<TraducteurPage> {

  bool sun=true;
  bool logo=true;
  Future<void>initiation_theme() async{
    var perfs=await SharedPreferences.getInstance();
    perfs.setBool("sun",sun);
    print("la valeur de sun sauvegarder est : "+sun.toString());
  }
  Future<void>obtention_theme()async{
    var perfs=await SharedPreferences.getInstance();
    setState(() {
      sun=perfs.getBool("sun")??true;
    });
    print("la valeur de sun sauvegarder est : "+sun.toString());
  }
  @override
  void initState(){
    super.initState();
    obtention_theme();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sun?Color(0xFF2E5AA6):Colors.black54,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            sun?Container(
              height: MediaQuery.of(context).size.height *0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius:MediaQuery.of(context).size.width *0.05 ,
                      blurRadius: MediaQuery.of(context).size.width *0.2,
                    )
                  ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(MediaQuery.of(context).size.width *0.1),
                  bottomRight: Radius.circular(MediaQuery.of(context).size.width *0.1)
                ),
              ),
            ):Container(
              height: MediaQuery.of(context).size.height *0.7,
              decoration: BoxDecoration(
                  color:Colors.blueGrey.shade800,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius:MediaQuery.of(context).size.width *0.05 ,
                      blurRadius: MediaQuery.of(context).size.width *0.2,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(MediaQuery.of(context).size.width *0.1),
                      bottomRight: Radius.circular(MediaQuery.of(context).size.width *0.1)
                  )
              ),
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width *0.15,
                      child: IconButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()),(route)=>false);
                      }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: sun?Color(0xFF2E5AA6):Colors.white,size: MediaQuery.of(context).size.width *0.08,),)
                    ),
                    logo?GestureDetector(
                      onTap: (){
                        setState(() {
                          logo=!logo;
                        });
                      },
                      child:Container(
                        child: Row(
                          children: [
                            Text("BEFLÊMI",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: sun?Color(0xFF2E5AA6):Colors.white)),
                            SizedBox(width:MediaQuery.of(context).size.width *0.02 ,),
                            Text("KOUADIO",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: sun?Color(0xFF2E5AA6):Colors.white))
                          ],
                        ),
                      ) ,
                    ):GestureDetector(
                      onTap: (){
                        setState(() {
                          logo=!logo;
                        });
                      },
                      child:Container(
                        child: Row(
                          children: [
                            Text("BK",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06,color: sun?Color(0xFF2E5AA6):Colors.white))

                            ],
                        ),
                      ) ,
                    )
                    ,Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width *0.15,
                      child: IconButton(onPressed: (){
                        setState(() {
                          sun=!sun;
                          initiation_theme();
                        });
                        }, icon: sun?Icon(Icons.dark_mode,color:Color(0xFF2E5AA6),):Icon(Icons.wb_sunny_outlined,color: Colors.white,)),
                    )
                  ],
                ).animate().fadeIn(delay: Duration(seconds: 1)).blur(begin: Offset(3, 3),end: Offset(0, 0)),

                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                Container(
                  width: MediaQuery.of(context).size.width *0.95,
                  height: MediaQuery.of(context).size.height *0.7,
                  child: TextFormField(
                    maxLines: 6,
                    cursorColor: sun?Color(0xFF2E5AA6):Colors.white,
                    cursorHeight: MediaQuery.of(context).size.height *0.06,
                    style: TextStyle(color: sun?Color(0xFF2E5AA6):Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.08),
                    decoration: InputDecoration(
                        hint: Text("Saisissez le texte que vous \nvoulez traduire",style: TextStyle(color: sun?Color(0xFF2E5AA6):Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)
                      )
                    ),
                  ),
                ).animate().fadeIn(delay: Duration(milliseconds: 1300)).blur(begin: Offset(3, 3),end: Offset(0, 0)),

              ],
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.74,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width:MediaQuery.of(context).size.width *0.35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.006),
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                      ),
                      child: Text("Français",style: TextStyle(color: Colors.white,fontFamily: "Poppins"),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.compare_arrows_rounded,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                    SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height *0.07,
                      width:MediaQuery.of(context).size.width *0.35,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.006),
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.03))
                      ),
                      child: Text("Baoulé",style: TextStyle(color: Colors.white,fontFamily: "Poppins")),
                    ),

                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                Container(

                  child: IconButton(onPressed: (){
                  }, icon: Icon(Icons.cameraswitch_rounded,color: Colors.white,size:MediaQuery.of(context).size.height *0.07 ,)),
                ),


              ],
            ).animate().fadeIn(delay: Duration(milliseconds: 1500)).blur(begin: Offset(3, 3),end: Offset(0, 0)),
Column(
  children: [
    Container(width: MediaQuery.of(context).size.width *1,),
    sun?Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.45),
      child: Image.asset("assets/images/logo apk.png",height: MediaQuery.of(context).size.height *0.27,width: MediaQuery.of(context).size.height *0.27,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn(),)
    :Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.45),
      child: Image.asset("assets/images/app logo apk 3.png",height: MediaQuery.of(context).size.height *0.27,width: MediaQuery.of(context).size.height *0.27,).animate().blur(duration: Duration(seconds: 1),begin: Offset(4, 4),end: Offset(0, 0)).fadeIn(),)

  ],
),
      Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.88,left: MediaQuery.of(context).size.width *0.7),
        child: IconButton(onPressed: (){

        }, icon: Icon(Icons.settings_voice,color: Colors.white,size:MediaQuery.of(context).size.width *0.15 ,)),
      ).animate().fadeIn(delay: Duration(milliseconds: 1500)).blur(begin: Offset(3, 3),end: Offset(0, 0)),

            ],
        ),
      ),
    );
  }
}
