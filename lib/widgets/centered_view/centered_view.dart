import 'package:flutter/material.dart';
import '../../constants/export.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Sizes.padSym,
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: Sizes.boxConstW,
        child: child,
      ),
    );
  }
}
