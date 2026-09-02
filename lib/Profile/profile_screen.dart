import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/Profile/profile_info.dart';
import 'package:test1/Profile/profile_top_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 226, 226),
      body: Padding(
        padding: EdgeInsetsGeometry.only(
          left: 20,
          right: 20,
          top: 50,
          bottom: 20,
        ),
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileTopContainer(size: size),
                text(
                  icon: Icon(Icons.email, color: Colors.grey),
                  icontext: "Email",
                  info: "PersonsEmail@.com",
                ),
                text(
                  icon: Icon(Icons.phone_android_outlined, color: Colors.grey),
                  icontext: "Mobile",
                  info: "01234567899",
                ),
                text(
                  icon: FaIcon(FontAwesomeIcons.creditCard, color: Colors.grey),
                  icontext: "Payment Method",
                  info: "Master Card",
                ),
                text(
                  icon: FaIcon(
                    FontAwesomeIcons.boxesPacking,
                    color: Colors.grey,
                  ),
                  icontext: "Past Orders",
                  info: "5 Orders",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




