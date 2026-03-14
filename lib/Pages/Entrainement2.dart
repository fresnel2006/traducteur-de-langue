import 'package:app1/Pages/Apprentissage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Entrainement2Page extends StatefulWidget {
  const Entrainement2Page({super.key});

  @override
  State<Entrainement2Page> createState() => _Entrainement2PageState();
}

class _Entrainement2PageState extends State<Entrainement2Page> {
  int index=1;
  void augmenter_valeur_index(){
    if(index==4){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ApprentissagePage()), (route)=>false);
    }else{
      setState(() {
        index+=1;
      });
    }
  }
  void diminuer_valeur_index(){
    if(index==1){
      setState(() {
        index==1;
      });
    }else{
      setState(() {
        index-=1;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5AA6),
      body: Stack(
        children: [
          SingleChildScrollView(
            child:
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                Container(
                    width: MediaQuery.of(context).size.width *1,
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                    child:
                    Row(children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                      SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                      Text("Presentations",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07),),

                    ],)
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.width *0.15,
                      width: MediaQuery.of(context).size.width *0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                        border:  Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.007),
                      )
                      ,child: Text("1",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07
                    ),),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width *0.65,
                        decoration: BoxDecoration(
                          border:  Border.all(color: Colors.white),)
                    )
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height *0.04,),

                Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045,right:MediaQuery.of(context).size.width *0.045 ),
                    child: Column(
                      spacing: 19,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Français",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                            Text("Baoulé",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                          ],
                        )
                        ,SizedBox(height: MediaQuery.of(context).size.height *0.025,)
                        ,Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mon nom \nest [Nom]",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                            Text("Mi dunman \nflè [Nom]",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Je viens de \n[Ville/Pays]",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                            Text("N fin \n[Ville/Pays]",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("J'habite à \n[Lieu]",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                            Text("N tran \n[Lieu]",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                            Container(
                              height: MediaQuery.of(context).size.height *0.003,
                              width: MediaQuery.of(context).size.width *0.1,
                              decoration: BoxDecoration(
                                  color:Colors.white30
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Je suis content \nde vous voir",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045)),
                            Text("Mi kloun ti kpa \nkɛ n wun amun",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045))
                          ],
                        ),





                      ],
                    ))


              ],
            ),),

        ],
      ),
    );
  }
}
