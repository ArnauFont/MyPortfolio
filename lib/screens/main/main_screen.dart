import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;
  const MainScreen({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _myController = new ScrollController();
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          // constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  controller: _myController,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Column(
                      children: children,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
