import 'package:flutter/material.dart';

class ImageArrowBack extends StatelessWidget {
  const ImageArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      left: 16,
      child: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0.85),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}