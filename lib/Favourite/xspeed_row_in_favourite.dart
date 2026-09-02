import 'package:flutter/material.dart';
import 'package:test1/About/about_screen.dart';

class XspeedRowInFavourite extends StatelessWidget {
  const XspeedRowInFavourite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Xspeed",
            style: TextStyle(fontWeight: FontWeight(600), fontSize: 25),
          ),
        ),
        IconButton(
          icon: Icon(Icons.help_outline),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutScreen()),
            );
          },
        ),
        SizedBox(width: 5),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.pushNamed(context, "/Setting");
          },
        ),
      ],
    );
  }
}
