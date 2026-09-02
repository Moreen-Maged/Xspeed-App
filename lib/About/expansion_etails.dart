import 'package:flutter/material.dart';

class ExpansionDetail extends StatelessWidget {
  const ExpansionDetail({
    super.key,
    required this.txt,
    required this.discription,
  });
  final String txt;
  final String discription;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const Border(),
      collapsedShape: const Border(),
      title: Title(color: Colors.black, child: Text(txt)),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            discription,
            style: TextStyle(color: Colors.black87, height: 1.4),
          ),
        ),
      ],
    );
  }
}