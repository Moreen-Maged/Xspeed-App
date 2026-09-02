import 'package:flutter/material.dart';

class MoreInfoTileExp extends StatelessWidget {
  const MoreInfoTileExp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text(
        "More Info",
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
            "This item is crafted with premium materials, engineered for regular everyday use, durability, and standard sizing.",
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
