import 'package:flutter/material.dart';
import 'package:test1/Screens/drawer_screen.dart';
import 'package:test1/Screens/home_screen.dart';
import 'package:test1/Screens/login_screen.dart';
import 'package:test1/Screens/profile_screen.dart';
import 'package:test1/Screens/register_screen.dart';
import 'package:test1/Screens/setting_screen.dart';
import 'package:test1/Screens/splash_screen.dart';
import 'package:test1/Screens/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => Login(),
        "/Register": (context) => RegisterScreen(),
        "/Setting": (context) => SettingScreen(),
        "/drawer": (context) => draw(),
        "/home":(context) => HomeScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.white,
      ),
      /* darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.white,
    secondaryHeaderColor: Colors.black
    ),*/
    );
  }
}
