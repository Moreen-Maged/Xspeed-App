import 'package:flutter/material.dart';
import 'package:test1/About/expansion_etails.dart';

class LegalTilesContainer extends StatelessWidget {
  const LegalTilesContainer({
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
            txt: "Acknowledgments",
            discription:
                'Special thanks to all open-source contributors and asset creators.',
          ),
          Divider(thickness: 1),
          ExpansionDetail(
            txt: "Privacy Policy",
            discription:
                'We respect your data privacy. Your personal information is encrypted and never shared with third parties.',
          ),
          Divider(thickness: 1),
          ExpansionDetail(
            txt: "Security Policy",
            discription:
                'By using Xspeed, you agree to our standard terms and community guidelines.',
          ),
          Divider(thickness: 1),
          ExpansionDetail(
            txt: "Terms of Service",
            discription:
                'By using Xspeed, you agree to our fair purchasing policies, standard 30-day return windows, and promo code usage guidelines. Account misuse or automated scraping will result in account suspension.',
          ),
        ],
      ),
    );
  }
}