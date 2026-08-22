import 'package:flutter/material.dart';

class onePicSection extends StatelessWidget {
  const onePicSection({
    super.key,
    required this.text1,
    required this.text2,
    required this.imageurl,
    required this.c,
  });
  final String text1;
  final String text2;
  final String imageurl;
  final Color c;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: c,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ), // spacing between text and image, matches your screenshot

          Image.asset(
            imageurl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
