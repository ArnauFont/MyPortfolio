import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        child: Container(
            color: secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(
                  flex: 2,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile2.jpg'),
                ),
                Spacer(),
                Text(
                  'Arnau Font',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text(
                    'Computer science student at UPC',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            )),
      ),
    );
  }
}
