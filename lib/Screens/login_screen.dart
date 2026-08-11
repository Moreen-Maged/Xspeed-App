import 'package:flutter/material.dart';
import 'package:test1/Screens/profile_screen.dart';
import 'package:test1/Screens/register_screen.dart';

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
      body: Form(
        key: formstate,
        child: SingleChildScrollView(
          child: Column(
            //spacing(20),
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 45, left: 10),
                    child: Text(
                      "Xspeed",
                      style: TextStyle(
                        fontWeight: FontWeight(600),
                        fontSize: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 45, left: 175),
                    child: Text(
                      "Select country",
                      style: TextStyle(
                        fontWeight: FontWeight(500),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45, left: 5),
                    child: Icon(
                      Icons.public,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
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
              Padding(
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
                    //box("First Name"),
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
                    //box("Last Name"),
                    SizedBox(height: 15),
                    email(),
                    //box("Email address"),
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
                    //box("Placeholder", icon: Icons.calendar_today),
                    SizedBox(height: 15),
                    password(),

                    // box("Passwords (6-12 characters)", icon: Icons.visibility),
                    SizedBox(height: 30),
                    Container(
                      color: const Color.fromARGB(255, 201, 200, 200),
                      height: 1,
                      width: 390,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
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
                      style: TextStyle(color: Theme.of(context).primaryColor),
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
                    Navigator.pushNamed(context, "/Register");
                  }
                },
              ),

              /*  GestureDetector(
                onTap: () {
                  if (formstate.currentState!.validate()) {
                    Navigator.pushNamed(context, "/Register");
                  }
                },

                child: Container(
                  height: 50,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                ),
             ),*/
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
    );
  }
}

Widget box(String s, {IconData? icon}) {
  return Container(
    width: 380,
    height: 40,
    child: DecoratedBox(
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),

      //child: Padding(
      // padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(s, style: TextStyle(color: Colors.grey, fontSize: 18)),
          if (icon != null) Icon(icon),
        ],
      ),
    ),
  );
  //,)
}

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

class button extends StatelessWidget {
  const button({
    super.key,
    required this.c,
    required this.textcolor,
    required this.borderc,
    required this.txt,
    required this.onPressed,
  });
  final Color c;
  final Color textcolor;
  final Color borderc;
  final String txt;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 160),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(40),
        ),
        backgroundColor: c,
        foregroundColor: textcolor,
        side: BorderSide(color: borderc),
      ),
      child: FittedBox(fit: BoxFit.scaleDown, child: Text(txt)),
    );
  }
}
