import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "اهلا",
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 50,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
