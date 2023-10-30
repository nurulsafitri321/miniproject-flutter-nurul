import 'package:flutter/material.dart';

class BioSection extends StatelessWidget {
  const BioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "TECHNOLOGY INFORMATION",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 16),
        Text(
          "Information technology students are people who are pursuing a degree in information technology in college. This field studies how to design, develop, and use information technology to solve problems.",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}