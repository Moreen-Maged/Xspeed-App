import 'package:flutter/material.dart';

class TopRowAbout extends StatelessWidget {
  const TopRowAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "About",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        ),
        SizedBox(width: 48),
      ],
    );
  }
}
