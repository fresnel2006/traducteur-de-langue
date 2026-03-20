import 'package:app1/Pages/Apprentissage.dart';
import 'package:app1/Pages/Debutant.dart';
import 'package:app1/Pages/Intermediaire.dart';
import 'package:app1/Pages/NivoDan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NiveauPage extends StatefulWidget {
  NiveauPage({super.key, required this.page});
var page;
  @override
  State<NiveauPage> createState() => _NiveauPageState();
}

class _NiveauPageState extends State<NiveauPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5AA6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height *0.045,),
            Container(width: MediaQuery.of(context).size.width *1,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child:
                      Container(
                        width: MediaQuery.of(context).size.width *0.15,
                        child: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,size: MediaQuery.of(context).size.width *0.07,color: Colors.white,),
                      ),
                    ),
                    Container(
                      child: Text("Quiz",style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.06, fontFamily: "Poppins",color: Colors.white),),
                    ),
                    GestureDetector(

                      child:
                    Container(
                      width: MediaQuery.of(context).size.width *0.15,
                      child: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,size: MediaQuery.of(context).size.width *0.07,color: Colors.transparent,),
                    ),
                    )
                  ],
                )

              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.07,),
            widget.page==1?Wrap(
              spacing: MediaQuery.of(context).size.width *0.03,

              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DebutantPage()));
                  },
                  child:
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width *0.2,
                  width:MediaQuery.of(context).size.width *0.2 ,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                  ),
                  child: Text("1",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                )
                ),
                GestureDetector(

                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("3",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("4",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("5",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("6",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("7",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),GestureDetector(
                    child:
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.2,
                      width:MediaQuery.of(context).size.width *0.2 ,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                      ),
                      child: Text("8",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                    )
                ),
              ],
            ):
            widget.page==2?Wrap(
                  spacing: MediaQuery.of(context).size.width *0.03,

                  children: [

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>IntermediairePage()));
                        },
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("1",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("3",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("4",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("5",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("6",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("7",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("8",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("9",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("10",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("11",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("12",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                  ],
                ):
                Wrap(
                  spacing: MediaQuery.of(context).size.width *0.03,

                  children: [

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NivodanPage()));
                        },
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("1",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                    GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("3",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("4",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("5",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("6",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("7",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),GestureDetector(
                        child:
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.01),
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.width *0.2,
                          width:MediaQuery.of(context).size.width *0.2 ,
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.07))
                          ),
                          child: Text("8",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.06),),
                        )
                    ),
                  ],
                ),

            widget.page==1?Lottie.asset("assets/animations/Error State - Dog.json"):
            widget.page==2?Lottie.asset("assets/animations/Angry Rrrrr!.json",):
                    Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                        Lottie.asset("assets/animations/Bull.json",width: MediaQuery.of(context).size.width *0.8)
                      ],
                    )
                    ],
        ),
      )
    );
  }
}
