import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

class CheckText extends StatelessWidget {
  final String title;
  const CheckText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            color: primaryColor,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(title),
        ],
      ),
    );
  }
}
