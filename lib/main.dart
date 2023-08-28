import 'package:flutter/material.dart';
import 'package:logins/screen/dashboard.dart';
import 'package:logins/screen/home.dart';
import 'package:logins/screen/profile.dart';
import 'package:logins/screen/splash.dart';

import 'screen/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}




