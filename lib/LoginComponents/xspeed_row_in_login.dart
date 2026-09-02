import 'package:flutter/material.dart';

class XspeedRowInLogin extends StatefulWidget {
  const XspeedRowInLogin({super.key});

  @override
  State<XspeedRowInLogin> createState() => _XspeedRowInLoginState();
}

class _XspeedRowInLoginState extends State<XspeedRowInLogin> {
  String _selectedCountry = "Select Country";

  final List<String> _countriesList = [
    "Egypt",
    "Saudi Arabia",
    "United Arab Emirates",
    "United States",
    "United Kingdom",
    "Canada",
  ];
  void _showCountryPicker() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(top: 16),
          // We use ListView.builder to automatically build the list from our array
          child: ListView.builder(
            itemCount: _countriesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  _countriesList[index],
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  setState(() {
                    _selectedCountry = _countriesList[index];
                  });

                  // 2. Close the bottom sheet
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Xspeed",
            style: TextStyle(
              fontWeight: FontWeight(600),
              fontSize: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        /*   Container(
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
        ),*/
        InkWell(
          onTap: () {
            _showCountryPicker();
          },
          child: Row(
            children: [
              Text(
                _selectedCountry,
                style: TextStyle(
                  fontWeight: FontWeight(500),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.public, color: Theme.of(context).primaryColor),
            ],
          ),
        ),
      ],
    );
  }
}
