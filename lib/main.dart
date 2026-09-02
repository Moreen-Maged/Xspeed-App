import 'package:flutter/material.dart';
import 'package:test1/Screens/drawer_screen.dart';
import 'package:test1/Home/components/home_screen.dart';
import 'package:test1/LoginComponents/login_screen.dart';
import 'package:test1/RegisterComponents/register_screen.dart';
import 'package:test1/Settings/setting_screen.dart';
import 'package:test1/Screens/splash_screen.dart';
import 'package:test1/Screens/xspeed_app_main.dart';
import 'package:provider/provider.dart';
import 'Providers/favourite_provider.dart';
import 'Providers/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoritesProvider()),
        ChangeNotifierProvider(create: ((context) => CartProvider())),
      ],

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/": (context) => Login(),
        "/Register": (context) => RegisterScreen(),
        "/Setting": (context) => SettingScreen(),
        "/drawer": (context) => draw(),
        "/home": (context) => HomeScreen(),
        "/main": (context) => XspeedAppMain(),
        "/splash": (context) => splash(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.white,
      ),
    );
  }
}
