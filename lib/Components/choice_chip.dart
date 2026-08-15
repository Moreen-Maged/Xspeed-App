import 'package:flutter/material.dart';
import 'package:test1/Screens/profile_screen.dart';

class homeCategory extends StatelessWidget {
  homeCategory({super.key});
  final List<String> categories = [
    "Clothes",
    "Shoes",
    "Hats",
    "Glasses",
    "Dresses",
    "Deals",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 10),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return choice_Chip(txt: categories[index]);
        },
      ),
    );
  }
}

class choice_Chip extends StatelessWidget {
  const choice_Chip({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: false,
      onSelected: (value) {},
      showCheckmark: false,
      selectedColor: Colors.black,
      backgroundColor: Colors.white,
      label: Text(txt),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      labelStyle: TextStyle(color: Colors.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
    );
  }
}
