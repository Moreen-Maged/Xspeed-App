import 'package:flutter/material.dart';
import 'package:test1/About/expansion_etails.dart';

class GeneralTilesContainer extends StatelessWidget {
  const GeneralTilesContainer({
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
      child: Column(
        children: [
          ExpansionDetail(
            txt: "Visit XSpeed.com",
            discription:
                'Explore the full web catalog, check out web-exclusive limited drops, track global shipments, and manage your account perks from any browser at xspeed.com.',
          ),
          Divider(thickness: 1),
          ExpansionDetail(
            txt: "Visit for inspiration",
            discription:
                'Browse our curated lookbooks, seasonal tech-wear showcases, and community style galleries to discover how creators style Xspeed gear in everyday life.',
          ),
          Divider(thickness: 1),
          ExpansionDetail(
            txt: "We are hiring!",
            discription:
                'Join the Xspeed team. We are actively looking for passionate mobile developers, UI/UX designers, and supply chain specialists to build the next generation of digital commerce. Reach out at careers@xspeed.com.',
          ),
        ],
      ),
    );
  }
}
