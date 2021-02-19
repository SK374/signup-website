import 'package:flutter/material.dart';
import '../../constants/export.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.contHgt,
      alignment: Alignment.center,
      child: Text(
        title,
        style: callToActMobile,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(Sizes.borRad),
      ),
    );
  }
}