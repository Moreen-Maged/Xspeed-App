import 'package:flutter/material.dart';
import 'package:test1/LoginComponents/email_login_and_register.dart';
import 'package:test1/LoginComponents/pasword_login_and_register.dart';


class UserInputTexFields extends StatelessWidget {
  const UserInputTexFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(height: 15),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your First Name";
              }
              if (value.length > 15) {
                return "please enter a valid First Name";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: "First Name",
              contentPadding: EdgeInsets.symmetric(vertical: 6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 201, 200, 200),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
    
          SizedBox(height: 15),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "please enter your Last Name";
              }
              if (value.length > 15) {
                return "please enter a valid Last Name";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: "Last Name",
              contentPadding: EdgeInsets.symmetric(vertical: 6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 201, 200, 200),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
    
          SizedBox(height: 15),
          email(),
    
          SizedBox(height: 15),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_today),
              hintText: "Placeholder",
              contentPadding: EdgeInsets.symmetric(vertical: 6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 201, 200, 200),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
    
          SizedBox(height: 15),
          password(),
    
          SizedBox(height: 30),
          Container(
            color: const Color.fromARGB(255, 201, 200, 200),
            height: 1,
            width: 390,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}