
import 'package:flutter/material.dart';

class WinterSaleContainer extends StatelessWidget {
  const WinterSaleContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.9,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 2, 2, 66),
            const Color.fromARGB(255, 2, 12, 146),
            const Color.fromARGB(255, 28, 8, 179),
            const Color.fromARGB(255, 23, 39, 215),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Winter Sale",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Stay cozy with up to 40% off ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.white,
            ),
          ),
          Text(
            "winter clothing and accessories",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}