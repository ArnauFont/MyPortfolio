import 'package:flutter/material.dart';
import 'package:flutter_profile/components/utils.dart';
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
            onPressed: () {
              Utils.launchUrl(url: cvLink);
            },
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
                onPressed: () {
                  Utils.launchUrl(url: linkedinLink);
                },
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
                onPressed: () {
                  Utils.launchUrl(url: githubLink);
                },
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
                onPressed: () {
                  Utils.launchMail(mail: 'arnau.font.2000@gmail.com');
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/images/envelope.png',
                    height: 20,
                    isAntiAlias: true,
                    color: Color(0xFF8C8C8E),
                  ),
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
