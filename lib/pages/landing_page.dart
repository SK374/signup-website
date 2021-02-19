import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../views/home_content_desktop.dart';
import '../views/home_content_mobile.dart';
import '../widgets/centered_view/centered_view.dart';
import '../widgets/navigation_bar/navigation_bar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                  child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                tablet: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              )),
            ],
          ),
        ),
      );
    });
  }
}