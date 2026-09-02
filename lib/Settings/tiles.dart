import 'package:flutter/material.dart';

class tiles extends StatelessWidget {
  const tiles({super.key, required this.icon, required this.txt});
  final Icon icon;
  final Text txt;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
    
      leading: icon,
      iconColor: Colors.black,
      title: txt,
      shape: Border(),
      collapsedShape: Border(),
      //trailing: Icon(Icons.arrow_drop_down_outlined, color: Colors.grey),
    );
  }
}