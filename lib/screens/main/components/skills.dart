import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/components/animated_circular_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                value: 0.9,
                label: 'C++',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                value: 0.7,
                label: 'Java',
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                value: 0.8,
                label: 'Python',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
