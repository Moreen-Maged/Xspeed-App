import 'package:flutter/material.dart';

class SettingsTopContainer extends StatelessWidget {
  const SettingsTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
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
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              SizedBox(height: 16),
              Text(
                "Settings",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

