import 'package:flutter/material.dart';
import 'package:test1/About/about_screen.dart';
import 'package:test1/Search/all_results_row.dart';
import 'package:test1/Search/search_list_and_grid.dart';
import 'package:test1/Search/search_textfield.dart';

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
              SearchTextField(),
              SizedBox(height: 12),
              AllResultsRow(),
              SizedBox(height: 12),
              Expanded(child: SearchListAndGrid()),
            ],
          ),
        ),
      ),
    );
  }
}



