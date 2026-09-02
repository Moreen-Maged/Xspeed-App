import 'package:flutter/material.dart';

Widget text({
  required Widget icon,
  required String icontext,
  required String info,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            icon,
            SizedBox(width: 6),
            Text(icontext, style: TextStyle(color: Colors.grey)),
          ],
        ),
        SizedBox(height: 2),
        Text(info, style: TextStyle(color: Colors.black)),
        SizedBox(height: 10),
        Divider(thickness: 1),
      ],
    ),
  );
}