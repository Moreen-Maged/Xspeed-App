import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/Screens/drawer_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 205, 204, 204),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30, vertical: 60),
        child: Container(
          width: size.width * 0.85,
          height: size.height * 0.85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),

                height: size.height * 0.38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: const Color.fromARGB(255, 43, 157, 250),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => draw(),
                              ),
                            );
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.settings, color: Colors.white),
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
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1000",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(height: 50, width: 1, color: Colors.white),
                        SizedBox(width: 20),
                        Text(
                          "1200",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                icon: FaIcon(FontAwesomeIcons.xTwitter, color: Colors.grey),
                icontext: "Twitter",
                info: "@person123",
              ),
              text(
                icon: FaIcon(FontAwesomeIcons.behance, color: Colors.grey),
                icontext: "Behance",
                info: "www.behance.net/person123",
              ),
              text(
                icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.grey),
                icontext: "Facebook",
                info: "www.facebook.com/person123",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget text({
  required Widget icon,
  required String icontext,
  required String info,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            icon,
            SizedBox(width: 6),
            Text(icontext, style: TextStyle(color: Colors.grey)),
          ],
        ),
        SizedBox(height: 2),
        Text(info, style: TextStyle(color: Colors.black)),
        SizedBox(height: 10),
        Divider(thickness: 1),
      ],
    ),
  );
}
