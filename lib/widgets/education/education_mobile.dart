import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/education_utils.dart';
import 'package:portfolio_web/widgets/education/education_desktop.dart';

class EducationMobile extends StatelessWidget {
  const EducationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bachelor in Computer Science',
            style: TextStyle(fontSize: 21),
          ),
          const SizedBox(
            height: 14,
          ),
          const Divider(color: Colors.white,thickness: 0.3,),
          const SizedBox(
            height: 14,
          ),
          for (var education in educationDetails)
            EducationWidget(
              duration: education.duration,
              position: education.position,
              companyName: education.companyName,
            ),
        ],
      ),
    );
  }
}
