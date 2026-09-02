import 'package:flutter/material.dart';
import 'package:test1/RegisterComponents/register_screen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
  
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed( Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegisterScreen()),
      );
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 119, 120, 120),
              const Color.fromARGB(255, 57, 57, 57),
              const Color.fromARGB(255, 47, 47, 47),
              Colors.black,
            ],
          ),
        ),
        child: Container(
          width: 220,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                const Color.fromARGB(255, 119, 120, 120),
                const Color.fromARGB(255, 57, 57, 57),
                const Color.fromARGB(255, 47, 47, 47),
                Colors.black,
              ],
            ),
            
          ),
          child: Center(
            child: Text(
              "Xspeed",
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}