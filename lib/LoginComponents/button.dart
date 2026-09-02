import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({
    super.key,
    required this.c,
    required this.textcolor,
    required this.borderc,
    required this.txt,
    required this.onPressed,
    required this.vertical,
    required this.horizontal,
  });
  final Color c;
  final Color textcolor;
  final Color borderc;
  final String txt;
  final VoidCallback onPressed;
  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
        backgroundColor: c,
        foregroundColor: textcolor,
        side: BorderSide(color: borderc),
      ),
      //child: Text(txt),
      child: FittedBox(fit: BoxFit.scaleDown, child: Text(txt)),
    );
  }
}