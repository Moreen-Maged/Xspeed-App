import 'package:flutter/material.dart';
import 'package:test1/About/expansion_etails.dart';

class ViewChangelogs extends StatelessWidget {
  const ViewChangelogs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
          width: 1.5,
        ),
      ),
      child: ExpansionDetail(
        txt: "View changelogs",
        discription:
            'v24.11.2:\n• Performance improvements\n• Bug fixes in product grid\n• UI tweaks for smoother scrolling',
      ),
    );
  }
}

