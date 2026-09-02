import 'package:flutter/material.dart';

class ImageShoppinBag extends StatelessWidget {
  const ImageShoppinBag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      right: 16,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.85),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}