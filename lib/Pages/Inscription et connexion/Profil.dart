import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var nom_utilisateur;
  Future <void > afficher_info_utilisateur() async{
    var perfs=await SharedPreferences.getInstance();
    setState(() {
      nom_utilisateur= perfs.getString("nom_d_utilisateur")??"";
    });
  }
  @override
  void initState(){
    super.initState();
    afficher_info_utilisateur();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(

              children: [
                Container(width:MediaQuery.of(context).size.width * 1),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  width: MediaQuery.of(context).size.width *1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        height: MediaQuery.of(context).size.height *0.1,
                        width: MediaQuery.of(context).size.width *0.3,
                        decoration: BoxDecoration(

                        ),
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,size: MediaQuery.of(context).size.width *0.07,)),
                      ),
                      Container(
                        child: Text("Profil",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.07),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height *0.1,
                        width: MediaQuery.of(context).size.width *0.3,
                        decoration: BoxDecoration(

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrowshape_turn_up_left_2_fill,color: Colors.transparent,)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),


                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: MediaQuery.of(context).size.width * 0.28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                  ),
                  child: Icon(Icons.account_circle,size: MediaQuery.of(context).size.width *0.25,color: Colors.black45,),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),


                Text(
                  nom_utilisateur,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFF000000),
                      fontFamily: "Poppins"
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.005),


                Text(
                  'ajouter un email',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.034,
                      color: Colors.green.shade300,
                      fontFamily: "Poppins"
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),


                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height *0.043,
                  width: MediaQuery.of(context).size.width *0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFF4CAF50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(CupertinoIcons.pen,color: Color(0xFF4CAF50)),
                      SizedBox(width:MediaQuery.of(context).size.width *0.0025),
                      Text(
                        'Modifier',
                        style: TextStyle(
                          color: Color(0xFF4CAF50),
                          fontSize: MediaQuery.of(context).size.width * 0.038,
                        ),
                      )
                    ],
                  ),
                ),



                SizedBox(height: MediaQuery.of(context).size.height * 0.05),


                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height *0.25,
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paramètre',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.048,
                          fontFamily: "Poppins",
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.02),



                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.palette_outlined,
                                  size: MediaQuery.of(context).size.width * 0.06, color: Color(0xFF555555)),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                              Text('Thème',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04)),
                            ],
                          ),
                          Text('claire',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * 0.038,
                                  color: Color(0xFF888888))),
                        ],
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.02),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.notifications_outlined,
                                  size: MediaQuery.of(context).size.width * 0.06, color: const Color(0xFF555555)),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                              Text('Notifications',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04)),
                            ],
                          ),
                          Text('Activé',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * 0.038,
                                  color: Color(0xFF888888))),
                        ],
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.02),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(

                            children: [
                              Icon(Icons.headset_mic_outlined,
                                  size: MediaQuery.of(context).size.width * 0.06, color: const Color(0xFF555555)),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                              Text('Assistance',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04)),

                            ],
                          ),
                          Icon(CupertinoIcons.arrowshape_turn_up_right_fill)
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              ],
            
            
          
        ),
      ),
    );
  }
}
