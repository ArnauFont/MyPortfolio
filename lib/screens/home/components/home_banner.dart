import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: Image.asset(
                'assets/images/bg.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: Container(
                color: darkColor.withOpacity(0.66),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My personal portfolio',
                      style: Responsive.isDesktop(context)
                          ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white)
                          : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    AnimatedTexts(),
                    SizedBox(height: defaultPadding),
                    if (!Responsive.isMobileLarge(context))
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          padding: EdgeInsets.all(defaultPadding),
                        ),
                        child: Text(
                          'EXPLORE NOW',
                          style: TextStyle(color: darkColor),
                        ),
                      )
                  ]),
            )
          ],
        ));
  }
}

class AnimatedTexts extends StatelessWidget {
  const AnimatedTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int animMilliseconds = 80;
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 2,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) StrongCodeText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Responsive.isMobileLarge(context)
              ? Expanded(
                  child: TextList(animMilliseconds: animMilliseconds),
                )
              : TextList(animMilliseconds: animMilliseconds),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) StrongCodeText(),
        ],
      ),
    );
  }
}

class TextList extends StatelessWidget {
  const TextList({
    Key? key,
    required this.animMilliseconds,
  }) : super(key: key);

  final int animMilliseconds;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: true,
      animatedTexts: [
        TyperAnimatedText('Hi!',
            speed: Duration(milliseconds: animMilliseconds)),
        TyperAnimatedText('My name is Arnau Font',
            speed: Duration(milliseconds: animMilliseconds)),
        TyperAnimatedText('I am from Barcelona',
            speed: Duration(milliseconds: animMilliseconds)),
        TyperAnimatedText('I am currently styuding Computer Science at UPC',
            speed: Duration(milliseconds: animMilliseconds)),
        TyperAnimatedText('And I enjoy programming a lot!',
            speed: Duration(milliseconds: animMilliseconds)),
      ],
    );
  }
}

class StrongCodeText extends StatelessWidget {
  const StrongCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: '<',
      children: [
        TextSpan(
          text: 'strong',
          style: TextStyle(color: primaryColor),
        ),
        TextSpan(text: '>')
      ],
    ));
  }
}
