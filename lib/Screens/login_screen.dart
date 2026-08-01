import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Column( 
          //spacing(20),
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 45, left: 10),
                  child: Text(
                    "Xspeed",
                    style: TextStyle(fontWeight: FontWeight(600), fontSize: 25,color: Theme.of(context).primaryColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45, left: 175),
                  child: Text(
                    "Select country",
                    style: TextStyle(fontWeight: FontWeight(500),color: Theme.of(context).primaryColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 5),
                  child: Icon(Icons.public,color: Theme.of(context).primaryColor,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 240),
              child: Text(
                "I'm new here.",
                style: TextStyle(fontWeight: FontWeight(400), fontSize: 25,color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(height: 15),
            box("First Name"),
            SizedBox(height: 15),
            box("Last Name"),
            SizedBox(height: 15),
            box("Email address"),
            SizedBox(height: 15),
            box("Placeholder", icon: Icons.calendar_today),
            SizedBox(height: 15),
            box("Passwords (6-12 characters)", icon: Icons.visibility),
            SizedBox(height: 30),
            Container(color: Colors.grey, height: 1, width: 390),
            SizedBox(height: 20),
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

            Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color:Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text("Sign in", style: TextStyle(color:Theme.of(context).secondaryHeaderColor)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 7, top: 200),
              child: Text(
                "By registering for an account, you agree to our terms of use. Please read our privacy statement.",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],),
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

      child: Padding(
        padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(s, style: TextStyle(color: Colors.grey, fontSize: 18)),
            if (icon != null) Icon(icon),
        
          ],
        ),
      ),
    ));
}
