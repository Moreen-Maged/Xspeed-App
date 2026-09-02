import 'package:flutter/material.dart';
import 'package:test1/LoginComponents/button.dart';
import 'package:test1/LoginComponents/user_input_textfields.dart';
import 'package:test1/LoginComponents/xspeed_row_in_login.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Form(
            key: formstate,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  XspeedRowInLogin(),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, right: 240),
                    child: Text(
                      "I'm new here.",
                      style: TextStyle(
                        fontWeight: FontWeight(400),
                        fontSize: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  UserInputTexFields(),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newvalue) {
                          setState(() {
                            _isChecked = newvalue ?? false;
                          });
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Yes, keep me informed via email about the latest trends and special offers. (not mandatory)",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          //style max line
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  button(
                    c: Colors.black,
                    textcolor: Colors.white,
                    borderc: Colors.black,
                    txt: "Sign in",
                    onPressed: () {
                      if (formstate.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          "/main",
                          (route) => false,
                        );
                      }
                    },
                    vertical: 15,
                    horizontal: 160,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 7, top: 200),
                    child: Text(
                      "By registering for an account, you agree to our terms of use. Please read our privacy statement.",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
