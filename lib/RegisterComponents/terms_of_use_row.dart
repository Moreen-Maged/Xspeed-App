import 'dart:ui';

import 'package:flutter/material.dart';

class TermsOfUseRow extends StatelessWidget {
  const TermsOfUseRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Terms of use",
          style: TextStyle(
            color: const Color.fromARGB(255, 93, 53, 161),
          ),
        ),
        Text(" & "),
        Text(
          "Privacy policy",
          style: TextStyle(
            color: const Color.fromARGB(255, 93, 53, 161),
          ),
        ),
      ],
    );
  }
}

