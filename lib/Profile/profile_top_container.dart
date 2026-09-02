
import 'package:flutter/material.dart';
import 'package:test1/Settings/setting_screen.dart';

class ProfileTopContainer extends StatelessWidget {
  const ProfileTopContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    
      height: size.height * 0.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        //color: const Color.fromARGB(255, 0, 0, 0),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 119, 120, 120),
            const Color.fromARGB(255, 57, 57, 57),
            const Color.fromARGB(255, 47, 47, 47),
            Colors.black,
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 14),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/063/477/498/non_2x/illustration-of-generic-male-avatar-in-gray-tones-for-anonymous-profile-placeholder-with-neutral-expression-designed-for-use-in-online-platforms-and-social-media-vector.jpg',
            ),
            //or Asset image()
          ),
          SizedBox(height: 14),
          Text(
            "Person's name",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 2),
          Text(
            "Job description",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Person's Street,Region/City,\nCountry",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}