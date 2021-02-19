import 'package:flutter/material.dart';
import '../constants/export.dart';
import '../widgets/call_to_action/call_to_action.dart';
import '../widgets/why_gymprove/why_gymprove.dart';

class HomeContentMobile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WhyGymprove(),
        Sizes.szBoxHgt,
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(Strings.contactUsPath),
          child: CallToAction(Strings.btnText)),
      ],
    );
  }
}
