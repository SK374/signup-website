import 'package:flutter/material.dart';
import '../../constants/export.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Sizes.contPadSym, 
      child: Text(
        title,
        style: callToActTabDesk
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(Sizes.borRad),
      ),
    );
  }
}