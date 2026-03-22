import 'package:app1/Pages/Switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParametrePage extends StatefulWidget {
  const ParametrePage({super.key});

  @override
  State<ParametrePage> createState() => _ParametrePageState();
}

class _ParametrePageState extends State<ParametrePage> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.02),
                      child:IconButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()), (route)=>false);
                      }, icon: Icon(CupertinoIcons.arrow_turn_up_left,color: Color(0xFF2E5AA6),size: MediaQuery.of(context).size.width *0.07,)),

                    ),
                    Text("Paramètre",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF2E5AA6),fontSize: MediaQuery.of(context).size.width *0.06),),
                    Container(
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.02),
                      child:IconButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SwitchPage()), (route)=>false);
                      }, icon: Icon(CupertinoIcons.arrow_turn_up_left,color: Colors.transparent,size: MediaQuery.of(context).size.width *0.07,)),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                Container(
                  height: MediaQuery.of(context).size.height *0.004,
                  width: MediaQuery.of(context).size.width *0.5,
                  decoration: BoxDecoration(
                      color: Color(0xFF2E5AA6)
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.06),

              ],
            )
          ],
        ),
      ),
    );
  }
}
