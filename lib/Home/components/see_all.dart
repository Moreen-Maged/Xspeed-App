import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight(600), fontSize: 25),
          ),
        ),
        Text(
          "See all",
          style: TextStyle(color: const Color.fromARGB(255, 104, 29, 148)),
        ),
      ],
    );
  }
}
