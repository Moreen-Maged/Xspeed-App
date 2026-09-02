import 'package:flutter/material.dart';

class RatingsTileExp extends StatelessWidget {
  const RatingsTileExp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text(
        "Ratings & Reviews",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      shape: Border(),
      collapsedShape: Border(),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 22),
              SizedBox(width: 8),
              Text(
                "4.8 / 5.0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 8),
              Text(
                "(128 reviews)",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}