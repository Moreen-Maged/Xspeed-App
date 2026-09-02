import 'package:flutter/material.dart';

class password extends StatelessWidget {
  const password({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter your password";
        }
        if (value.length < 6 || value.length > 12) {
          return "please enter a valid password";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.visibility),
        hintText: "Password (6-12 char)",
        contentPadding: EdgeInsets.symmetric(vertical: 6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color.fromARGB(255, 201, 200, 200)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
