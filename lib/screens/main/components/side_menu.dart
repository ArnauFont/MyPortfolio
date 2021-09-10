import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/area_info_text.dart';
import 'package:flutter_profile/screens/main/components/coding.dart';
import 'package:flutter_profile/screens/main/components/cv_and_social_media.dart';
import 'package:flutter_profile/screens/main/components/knowledge.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(title: 'Residence', description: 'Barcelona'),
                    AreaInfoText(title: 'Age', description: '21'),
                    AreaInfoText(title: 'Phone', description: '625675281'),
                    Divider(),
                    Skills(),
                    Divider(),
                    Coding(),
                    Divider(),
                    Knowledge(),
                    Divider(),
                    CvSocialMedia(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
