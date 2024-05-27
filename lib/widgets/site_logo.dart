import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/app_assets.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "MAN",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: AppAssets.fontFamily1,
          color: CustomColor.yellowSecondary,
        ),
      ),
    );
  }
}
