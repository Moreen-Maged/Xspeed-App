import 'package:flutter/material.dart';

class email extends StatelessWidget {
  const email({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter your email";
        }
        if (!value.contains("@") || !value.contains(".")) {
          return "please enter a valid email";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: "Email address",
        contentPadding: EdgeInsets.symmetric(vertical: 6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}