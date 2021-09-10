import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';

class CvSocialMedia extends StatelessWidget {
  const CvSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => primaryColor.withOpacity(0.1))),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'DOWNLOAD CV',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset('assets/icons/download.svg'),
              ],
            ),
          ),
        ),
        Container(
          color: secondaryColor,
          child: Row(
            children: [
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: primaryColor,
                  shadowColor: Colors.transparent,
                  shape: CircleBorder(),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/icons/linkedin.svg'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: primaryColor,
                  shadowColor: Colors.transparent,
                  shape: CircleBorder(),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/icons/github.svg'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: primaryColor,
                  shadowColor: Colors.transparent,
                  shape: CircleBorder(),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/icons/twitter.svg'),
                ),
              ),
              Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
