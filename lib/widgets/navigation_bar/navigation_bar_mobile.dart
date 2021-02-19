import 'package:flutter/material.dart';
import '../../widgets/navigation_bar/navbar_logo.dart';
import '../../constants/export.dart';

class NavigationBarMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.navContH,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          NavBarLogo(),
        ],
      ),
    );
  }
}
