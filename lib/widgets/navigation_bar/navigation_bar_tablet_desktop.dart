import 'package:flutter/material.dart';
import 'nav_bar_item.dart';
import 'navbar_logo.dart';
import '../../constants/export.dart';

class NavigationBarTabletDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.navItemConH,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(Strings.navItem1),
              Sizes.navItemSBW,
              NavBarItem(Strings.navItem2),
              Sizes.navItemSBW,
              NavBarItem(Strings.navItem3)
            ],
          ),
        ],
      ),
    );
  }
}