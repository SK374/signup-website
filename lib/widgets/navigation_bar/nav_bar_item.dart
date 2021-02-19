import 'package:flutter/material.dart';
import '../../constants/export.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: navBarItem,
    );
  }
}
