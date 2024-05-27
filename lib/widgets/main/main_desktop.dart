import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/app_assets.dart';

import '../../constants/colors.dart';
import 'dart:html';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // intro message
                const Text(
                  "Hi,\nI'm Muhammed Aslam N\nA Flutter Developer",
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                const SizedBox(height: 15),
                // contact btn
                SizedBox(
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed:getInTouchWithMe,
                    child: const Text("Get in touch",style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
          // avatar img
          Image.asset(
            AppAssets.avatarImage,
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }

  void getInTouchWithMe() {
    final String mailtoLink = Uri(
      scheme: 'mailto',
      path: 'muhammedaslamn210@gmail.com',
    ).toString();
    final anchor = AnchorElement(href: mailtoLink);
    anchor.target = '_blank';
    anchor.click();
  }
}
