import 'package:flutter/material.dart';
import 'package:test1/Screens/home_screen.dart';
import 'package:test1/Screens/login_screen.dart';
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Xspeed",
                        style: TextStyle(
                          fontWeight: FontWeight(600),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Select country",
                        style: TextStyle(fontWeight: FontWeight(500)),
                      ),
                    ),

                    Icon(Icons.public),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, right: 180),
                  child: Text(
                    "Welcome back.",
                    style: TextStyle(fontWeight: FontWeight(500), fontSize: 25),
                  ),
                ),
                SizedBox(height: 15),
                email(),
                //box("Email"),
                SizedBox(height: 15),
                password(),

                //box("Password", icon: Icons.visibility),
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
                /* GestureDetector(
                  onTap: () {
                    if(formstate.currentState!.validate()){
                    Navigator.pushAndRemoveUntil(context,
                     MaterialPageRoute(builder: (context) => HomeScreen()), 
                     (route) => false,
                     );}
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text("Sign in", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),*/
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
                /*GestureDetector(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: BoxBorder.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),*/
                //Spacer(),
                //SizedBox(height: double.infinity,),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terms of use",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 93, 53, 161),
                      ),
                    ),
                    Text(" & "),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 93, 53, 161),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
