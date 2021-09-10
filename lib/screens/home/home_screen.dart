import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/heigh_lights.dart';
import 'package:flutter_profile/screens/home/components/home_banner.dart';
import 'package:flutter_profile/screens/home/components/recommendations.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}
