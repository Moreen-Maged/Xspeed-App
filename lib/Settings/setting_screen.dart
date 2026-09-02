import 'package:flutter/material.dart';
import 'package:test1/Settings/divider.dart';
import 'package:test1/Settings/settings_top_container.dart';
import 'package:test1/Settings/tiles.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SettingsTopContainer(),
          SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  tiles(
                    icon: Icon(Icons.person_2_outlined),
                    txt: Text("Account"),
                  ),
                  div(),
                  tiles(
                    icon: Icon(Icons.notifications_active_outlined),
                    txt: Text("Notifications"),
                  ),
                  div(),
                  tiles(icon: Icon(Icons.card_giftcard), txt: Text("Copouns")),
                  div(),
                  tiles(
                    icon: Icon(Icons.logout_outlined),
                    txt: Text("Log out"),
                  ),
                  div(),
                  tiles(icon: Icon(Icons.delete), txt: Text("Delete account")),
                  div(),
                  SizedBox(height: 16),
                  Text(
                    "Feedback",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  tiles(
                    icon: Icon(Icons.warning_amber_outlined),
                    txt: Text("Report a bug"),
                  ),
                  div(),
                  tiles(
                    icon: Icon(Icons.message_outlined),
                    txt: Text("Send feedback"),
                  ),
                  div(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




