import 'package:flutter/material.dart';
import 'package:logins/screen/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard.dart';
import 'home.dart';
import 'login.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          //color: Colors.black,
          padding: EdgeInsets.only(left:40,right:40),
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
              color: Colors.white24),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [



              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.dashboard),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => dash(),));

                },
                //write your script

              ),
              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home(name: " ",),));
                  //write your script
                },
              ),
              IconButton(
                color:Colors.black54,
                icon: const Icon(Icons.person),
                onPressed: () {},
                )
            ], // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ),
      body:Stack(
        children: [
          Container(
            height: double.infinity,
            width:double.infinity,
            decoration: BoxDecoration(

      image: DecorationImage(
      fit: BoxFit.fill,
        image: ExactAssetImage("assets/images/Profile.png"),
      )),),


          Padding(
            padding: const EdgeInsets.only(top:450),
            child: Container(

              height:450,
              width:450,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
                  color: Colors.lightBlueAccent),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon((Icons.email)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email:",style:TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                            Text("moulendu25@gmail.com",style:TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon((Icons.phone)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone:",style:TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                            Text("9121315134",style:TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),



                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon((Icons.phone)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("College:",style:TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                            Text("Academy of Technology",style:TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),



                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon((Icons.phone)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Branch:",style:TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                            Text("ComputerScience",style:TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),



                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon((Icons.phone)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Semester:",style:TextStyle(fontSize:15,fontWeight: FontWeight.w300 ),),
                            Text("3rd",style:TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),



                          ],
                        )
                      ],
                    ),
                SizedBox(height: 20),
                ElevatedButton(onPressed:()async{

                    var sharedpref = await SharedPreferences.getInstance();
                     sharedpref.remove(SplashState.KEYLOGIN);
                     sharedpref.remove("userdata");

                     Navigator.pushReplacement(
                         context, MaterialPageRoute(builder: (context) => Login(),));
                  },
                       child:Text("LOGOUT")



                ) ],
                ),
              ),

            ),
            ),

        ],
      )

    );
  }
}
