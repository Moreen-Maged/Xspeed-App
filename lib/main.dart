import 'package:flutter/material.dart';
import 'package:test1/Screens/drawer_screen.dart';
import 'package:test1/Screens/home_screen.dart';
import 'package:test1/Screens/login_screen.dart';
import 'package:test1/Screens/product_details_screen.dart';
import 'package:test1/Screens/profile_screen.dart';
import 'package:test1/Screens/register_screen.dart';
import 'package:test1/Screens/setting_screen.dart';
import 'package:test1/Screens/splash_screen.dart';
import 'package:test1/Screens/test.dart';
import 'package:test1/Screens/xspeed_app_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      routes: {
        "/": (context) => Login(),
        "/Register": (context) => RegisterScreen(),
        "/Setting": (context) => SettingScreen(),
        "/drawer": (context) => draw(),
        "/home": (context) => HomeScreen(),
        "/main": (context) => XspeedAppMain(),
       
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.white,
      ),
    );
  }
}
