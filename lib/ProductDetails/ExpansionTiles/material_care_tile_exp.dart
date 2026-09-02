import 'package:flutter/material.dart';

class MaterialCareTileExp extends StatelessWidget {
  const MaterialCareTileExp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text(
        "Material & Care",
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
          child: Text(
            "High-Grade Blend.\nMachine wash cold with like colors. Do not bleach. Tumble dry low.",
            style: TextStyle(
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}