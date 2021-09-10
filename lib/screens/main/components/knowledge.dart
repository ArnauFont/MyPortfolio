import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/check_title.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            'Knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        CheckText(title: 'Team work'),
        CheckText(title: 'Leadership'),
        CheckText(title: 'Self learning'),
        CheckText(title: 'Motivation'),
      ],
    );
  }
}
