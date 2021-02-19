import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarMobile(),
      desktop: NavigationBarTabletDesktop(),
    );
  }
}