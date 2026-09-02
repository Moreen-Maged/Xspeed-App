import 'package:flutter/material.dart';
import 'package:test1/About/expansion_etails.dart';
import 'package:test1/About/general_tiles_container.dart';
import 'package:test1/About/legal_tiles_container.dart';
import 'package:test1/About/top_row_about.dart';
import 'package:test1/About/view_changelogs.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 226, 226),

      body: SafeArea(
        child: Center(
          child: Container(
            width: size.width * 0.85,
            height: size.height * 0.88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
              child: Column(
                children: [
                  TopRowAbout(),
                  SizedBox(height: 10),
                  Text(
                    "Xspeed 24.11.2",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "(142356971256)",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  ViewChangelogs(),
                  SizedBox(height: 20),
                  GeneralTilesContainer(),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Legal",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  LegalTilesContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




