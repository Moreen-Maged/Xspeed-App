import 'package:flutter/material.dart';

class draw extends StatelessWidget {
  const draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 170, top: 25),
              child: Text(
                "Xspeed",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            Divider(height: 2, color: Colors.black),
            SizedBox(height: 30),
            elements("Home", icon: Icons.home_outlined),
            SizedBox(height: 23),
            elements("Products", icon: Icons.inventory_2_outlined),
            SizedBox(height: 23),
            elements("Payment Page", icon: Icons.archive_outlined),
            SizedBox(height: 23),
            elements("Promo Codes", icon: Icons.sell),
            SizedBox(height: 23),
            elements("Past Orders", icon: Icons.restore),
            SizedBox(height: 30),
            Divider(height: 2, color: Colors.black),
            SizedBox(height: 240),
            elements("Notifications", icon: Icons.notifications_outlined),
            SizedBox(height: 23),
            elements("Settings", icon: Icons.settings_outlined),
            SizedBox(height: 23),
            elements("Docs", icon: Icons.description_outlined),
            SizedBox(height: 23),
            elements("Help", icon: Icons.help_outline),
          ],
        ),
      ),
    );
  }
}

Widget elements(String s, {IconData? icon}) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsetsGeometry.only(left: 11),
      child: Row(
        children: [
          if (icon != null) Icon(icon),
          Padding(padding: EdgeInsetsGeometry.only(right: 15)),
          Text(
            s,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
  );
}
