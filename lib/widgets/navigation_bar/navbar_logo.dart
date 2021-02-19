import 'package:flutter/material.dart';
import '../../constants/export.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: Sizes.logoSbH,
            width: Sizes.logoSbW,
            child: Row(
              children: [
                Image.asset(Strings.logo),
                SizedBox(width: Sizes.imgSbW),
                Text(
                  Strings.companyName,
                  style: navBarLogo,
                ),
              ],
            ),
          );
  }
}