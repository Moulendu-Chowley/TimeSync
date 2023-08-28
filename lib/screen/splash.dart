// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  static const String keylogin="login";
  @override
  void initState() {
    super.initState();
    wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(


      body: Center(child: Container(

          decoration: BoxDecoration(

            image: DecorationImage(
            fit: BoxFit.fill,
            image: ExactAssetImage("assets/images/my.png"),
          )),),
    ),);
  }


  void wheretogo()async {
    var sharedpref = await SharedPreferences.getInstance();
    var isloggedin= sharedpref.getBool(keylogin);

    Timer(Duration(seconds: 5), () {
      if(isloggedin!=null) {
        if (isloggedin) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home(name: "",),));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login(),));
        }
      }  else{
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login(),));
      }

        }

      );
  }
}

