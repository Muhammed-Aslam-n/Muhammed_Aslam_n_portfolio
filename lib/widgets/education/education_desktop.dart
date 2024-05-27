import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/education_utils.dart';

class EducationDesktop extends StatelessWidget {
  const EducationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          children: [
            Text(
              'Bachelor in Computer Science',
              style: TextStyle(fontSize: 21),
            ),

          ],
        ),
        const SizedBox(
          width: 60,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var education in educationDetails)
              EducationWidget(
                duration: education.duration,
                position: education.position,
                companyName: education.companyName,
              ),
          ],
        )
      ],
    );
  }
}

class EducationWidget extends StatelessWidget {
  final String duration, position, companyName;

  const EducationWidget({
    super.key,
    required this.duration,
    required this.position,
    required this.companyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          duration,
          style: TextStyle(
            color: Theme.of(context)
                .textTheme
                .titleMedium
                ?.color
                ?.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          position,
          style: const TextStyle(
            fontSize: 21,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          companyName,
          style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.color
                  ?.withOpacity(0.5)),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
