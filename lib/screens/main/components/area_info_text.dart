import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AreaInfoText extends StatelessWidget {
  final String title;
  final String description;
  const AreaInfoText({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          Text(description),
        ],
      ),
    );
  }
}
