import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/components/animated_linear_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text('Coding', style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearIndicator(
          title: 'C++',
          value: 0.9,
        ),
        AnimatedLinearIndicator(
          title: 'C++',
          value: 0.56,
        ),
        AnimatedLinearIndicator(
          title: 'C++',
          value: 0.78,
        ),
        AnimatedLinearIndicator(
          title: 'C++',
          value: 0.48,
        ),
        AnimatedLinearIndicator(
          title: 'C++',
          value: 0.98,
        ),
      ],
    );
  }
}
