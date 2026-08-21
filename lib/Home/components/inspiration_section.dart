import 'package:flutter/material.dart';

class InspirationalSection extends StatelessWidget {
  final List<String> images;

  const InspirationalSection({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF3A2E8C),
      padding: EdgeInsets.all(12),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              return ClipRRect(
                //borderRadius: BorderRadius.circular(10),
                child: Image.network(images[index], fit: BoxFit.cover),
              );
            },
          ),

          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Inspirational",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text("See all", style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }
}
