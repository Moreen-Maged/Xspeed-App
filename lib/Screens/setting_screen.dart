import 'package:flutter/material.dart';
import 'package:test1/Screens/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 246, 179, 202),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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

class div extends StatelessWidget {
  const div({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 2, thickness: 1, color: Colors.grey);
  }
}

class tiles extends StatelessWidget {
  const tiles({super.key, required this.icon, required this.txt});
  final Icon icon;
  final Text txt;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,

      title: txt,
      trailing: Icon(Icons.arrow_drop_down_outlined, color: Colors.grey),
    );
  }
}
