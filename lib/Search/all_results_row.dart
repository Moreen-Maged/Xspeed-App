import 'dart:ui';

import 'package:flutter/material.dart';

class AllResultsRow extends StatelessWidget {
  const AllResultsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All",
          style: TextStyle(
            fontWeight: FontWeight(600),
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        Text(
          "10 Results",
          style: TextStyle(
            fontWeight: FontWeight(400),
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
