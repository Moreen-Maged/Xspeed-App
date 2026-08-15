import 'package:flutter/material.dart';

class homeBestsellerImage extends StatelessWidget {
  homeBestsellerImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.network(
            "https://img.magnific.com/free-photo/colored-transparent-sunglasses-still-life_23-2150165779.jpg?semt=ais_test_b&w=740&q=80",
            width: (size.width * 0.5),
            height: size.height * 0.38,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: size.width * 0.032,
            top: size.height * 0.015,
            child: Icon(Icons.favorite, color: Colors.pink, size: 24.0),
          ),
          Positioned(
            left: size.height * 0.014,
            top: size.height * 0.015,
            child: Container(
              height: 28,
              width: 46,
              child: Center(
                child: Text("-10%", style: TextStyle(color: Colors.white)),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            left: size.height * 0.014,
            bottom: size.height * 0.015,
            child: Container(
              height: 28,
              width: 46,
              child: Center(
                child: Text("New", style: TextStyle(color: Colors.black)),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: size.height * 0.074,
            bottom: size.height * 0.015,
            child: Container(
              height: 28,
              width: 80,
              child: Center(
                child: Text("Exclusive", style: TextStyle(color: Colors.black)),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
