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
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
              index==1?Container(
                  width: MediaQuery.of(context).size.width *1,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                  child:
                  Row(children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                    SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                    Text("Apprentissage",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07),),

                  ],)
              ):
              Container(
                  width: MediaQuery.of(context).size.width *1,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                  child:
                  Row(children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.white,size: MediaQuery.of(context).size.width *0.07,)),
                    SizedBox(width: MediaQuery.of(context).size.width *0.03,),
                    Text("Salutations",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07),),

                  ],)
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
              index==1?Row(
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
              ):
              index==2?Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width *0.65,
                      decoration: BoxDecoration(
                        border:  Border.all(color: Colors.white),)
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width *0.15,
                    width: MediaQuery.of(context).size.width *0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                      border:  Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.007),
                    )
                    ,child: Text("2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07
                  ),),
                  ),

                ],
              ):
              index==3?Row(
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
                    ,child: Text("3",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07
                  ),),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width *0.65,
                      decoration: BoxDecoration(
                        border:  Border.all(color: Colors.white),)
                  ),

                ],
              ):
              index==4?Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width *0.65,
                      decoration: BoxDecoration(
                        border:  Border.all(color: Colors.white),)
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.width *0.15,
                    width: MediaQuery.of(context).size.width *0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                      border:  Border.all(color: Colors.white,width: MediaQuery.of(context).size.width *0.007),
                    )
                    ,child: Text("4",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07
                  ),),
                  ),

                ],
              ):Text(""),
              SizedBox(height: MediaQuery.of(context).size.height *0.04,),
              index==1?Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                child: Text("Tout commence au XVIIIe siècle (vers 1750), dans l'actuel Ghana.\nÀ cette époque, le puissant Empire Ashanti est en proie à des luttes de succession sanglantes après la mort du roi Opoku Waré.\nUne faction de la famille royale, dirigée par la Reine Abla Pokou, refuse de se soumettre au nouvel héritier.\nMenacée de mort, elle décide de s'enfuir vers l'Ouest (la Côte d'Ivoire actuelle) avec sa famille, ses soldats et ses partisans.",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              ):
              index==2?Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                child: Text("texte2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              ):
              index==3?Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                child: Text("texte2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              ):
              index==4?Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.045),
                child: Text("texte2",style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.045),),
              ):
              Text("")
            ],
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height *0.83
              ),
              child: Column(
                spacing:MediaQuery.of(context).size.width *0.05,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing:MediaQuery.of(context).size.width *0.01 ,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width *0.04,
                        width: MediaQuery.of(context).size.width *0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                            border: Border.all(color: Colors.white)
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width *0.04,
                        width: MediaQuery.of(context).size.width *0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                            border: Border.all(color: Colors.white)
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width *0.04,
                        width: MediaQuery.of(context).size.width *0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                            border: Border.all(color: Colors.white)
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width *0.04,
                        width: MediaQuery.of(context).size.width *0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1)),
                            border: Border.all(color: Colors.white)
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width *0.13,
                        width: MediaQuery.of(context).size.width *0.13,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1,))
                        ),
                        child: IconButton(onPressed: (){
                          diminuer_valeur_index();
                        }, icon: Icon(Icons.arrow_back_ios_sharp,color: Color(0xFF2E5AA6),)),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width *0.07,),
                      Container(
                        height: MediaQuery.of(context).size.width *0.13,
                        width: MediaQuery.of(context).size.width *0.13,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *1,))
                        ),
                        child: IconButton(onPressed: (){
                          augmenter_valeur_index();
                        }, icon: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFF2E5AA6),)),
                      )
                    ],
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
