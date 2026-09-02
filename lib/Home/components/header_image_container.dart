import 'dart:ui';

import 'package:flutter/material.dart';

class HeaderImageContainer extends StatelessWidget {
  const HeaderImageContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/1246.jpg",
            width: size.width * 0.9,
            height: size.height * 0.25,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: size.width * 0.115,
            bottom: size.height * 0.05,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
                vertical: size.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Find out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
