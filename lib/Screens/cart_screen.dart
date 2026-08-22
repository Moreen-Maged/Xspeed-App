import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test1/Screens/about_screen.dart';
import 'package:test1/Screens/login_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 30),
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Xspeed",
                    style: TextStyle(fontWeight: FontWeight(600), fontSize: 25),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.help_outline),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutScreen()),
                    );
                  },
                ),
                SizedBox(width: 5),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Setting");
                  },
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shopping Cart",
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "0 Articles",
                  style: TextStyle(
                    fontWeight: FontWeight(400),
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Lottie.asset("assets/animation/0EKhwz4EDC.json"),
            SizedBox(height: 26),
            Center(
              child: Text(
                "Cart is empty",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 28),
            button(
              c: Colors.black,
              textcolor: Colors.white,
              borderc: Colors.black,
              txt: "Inspire Me!",
              onPressed: () {},
              vertical: 18,
              horizontal: 7,
            ),
          ],
        ),
      ),
    );
  }
}
