import 'package:flutter/material.dart';
import 'package:test1/Screens/about_screen.dart';
import 'package:test1/Search/search_list_and_grid.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 30),
          child: Column(
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
                  IconButton(
                    icon: Icon(Icons.help_outline),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutScreen()),
                      );
                    },
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      Navigator.pushNamed(context, "/Setting");
                    },
                  ),
                ],
              ),
              SizedBox(height: 12),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search_outlined),
                  hintText: "Search",
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
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "10 Results",
                    style: TextStyle(
                      fontWeight: FontWeight(400),
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Expanded(child: SearchListAndGrid()),
            ],
          ),
        ),
      ),
    );
  }
}
