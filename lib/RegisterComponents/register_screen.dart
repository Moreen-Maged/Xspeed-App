import 'package:flutter/material.dart';
import 'package:test1/LoginComponents/button.dart';
import 'package:test1/LoginComponents/email_login_and_register.dart';
import 'package:test1/LoginComponents/pasword_login_and_register.dart';
import 'package:test1/LoginComponents/xspeed_row_in_login.dart';
import 'package:test1/RegisterComponents/terms_of_use_row.dart';
import 'package:test1/LoginComponents/login_screen.dart';
import 'package:test1/Screens/xspeed_app_main.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isChecked = false;
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          top: 40,
          bottom: 56,
        ),
        child: Form(
          key: formstate,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //XspeedRowInRegister(),
                XspeedRowInLogin(),
                SizedBox(height: 20),

                Align(
                  alignment: AlignmentGeometry.centerLeft,

                  child: Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight(500), fontSize: 25),
                  ),
                ),
                SizedBox(height: 15),
                email(),
                SizedBox(height: 15),
                password(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newvalue) {
                        setState(() {
                          _isChecked = newvalue ?? false;
                        });
                      },
                    ),
                    Expanded(child: Text("Rememer me")),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 93, 53, 161),
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
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => XspeedAppMain(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  vertical: 15,
                  horizontal: 160,
                ),
                SizedBox(height: 40),
                Container(color: Colors.grey, height: 1),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 180),
                  child: Text(
                    "New to Xspeed",
                    style: TextStyle(fontWeight: FontWeight(500), fontSize: 25),
                  ),
                ),
                SizedBox(height: 15),
                button(
                  c: Colors.white,
                  textcolor: Colors.black,
                  borderc: Colors.black,
                  txt: "Register",
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  vertical: 15,
                  horizontal: 160,
                ),
                SizedBox(height: 40),
                TermsOfUseRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
