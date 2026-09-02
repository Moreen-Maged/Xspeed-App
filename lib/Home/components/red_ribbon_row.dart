import 'package:flutter/material.dart';

class RedRibbonRow extends StatelessWidget {
  const RedRibbonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.redAccent,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.info_outline, color: Colors.white),
                SizedBox(width: 6),
                Text(
                  "Spend over 50 dollars and get free delivery",
                  style: TextStyle(color: Colors.white),
                ),
                //Icon(Icons.expand_less_outlined, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
