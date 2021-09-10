import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double value;
  final String label;

  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text((value * 100).toInt().toString() + '%',
                      style: Theme.of(context).textTheme.subtitle1),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
