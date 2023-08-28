import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logins/screen/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../userdata.dart';
import 'home.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 final _email = TextEditingController();
 final _password=TextEditingController();
 final _username=TextEditingController();
 @override
 void initState() {
   super.initState();
 }
   void storedata() async {
     User user = User(_email.text, _password.text);
     String userdata = jsonEncode(user);
     var sharedPef = await SharedPreferences.getInstance();
     sharedPef.setString("userdata", userdata);
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: Colors.purple,
     body: Container(
       height: double.infinity,
       width: double.infinity,

         decoration: const BoxDecoration(image:  DecorationImage(
           fit: BoxFit.fill,
           image: ExactAssetImage("assets/images/Group 13.png"),
         )),
       child: Stack(
         children:[ Padding(
           padding: const EdgeInsets.only(top:420),
           child: Column(
             children: [
               Container(
                decoration:const BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),)),
                 height: 440,
                 width: 500,

                 padding: const EdgeInsets.all(15),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                 children:[
                   const Text("Login",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w800),),
                 const SizedBox(height: 8,),
                   const Text("login to continue...",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
                   const SizedBox(height: 8,),

                   TextField(
                   controller:_email ,
                   decoration: InputDecoration(
                       hintStyle: const TextStyle(color: Colors.blue),
                       hintText: "Username",
                       labelText: "usename",
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                   ),
                 ),
                 const SizedBox(height: 11,),
                   TextField(
                     controller:_username ,
                     decoration: InputDecoration(
                         hintStyle: const TextStyle(color: Colors.blue),
                         hintText: "Email",
                         labelText: "email",
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                     ),
                   ),
                   const SizedBox(height: 11,),
                 TextField(
                   controller: _password,
                   obscureText: true,
                   decoration: InputDecoration(
                       hintStyle: const TextStyle(color: Colors.blue),

                       hintText: "password",
                       labelText: "password",
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                   ),),
                   const SizedBox(height: 11,),

                   // ignore: use_build_context_synchronously
                   ElevatedButton(onPressed: ()async{
                     storedata();
                     var sharedPef= await SharedPreferences.getInstance();
                     sharedPef.setBool(SplashState.keylogin,true);
                     Navigator.pushReplacement(
                     context, MaterialPageRoute(builder: (context) =>Home(name:_email.text)));

                   },

                       child:const Text("Login"),

                   )
                   ] ,



                    ),
               ),
             ],
           ),
         ),
       ]),
     )
    );
  }
}
