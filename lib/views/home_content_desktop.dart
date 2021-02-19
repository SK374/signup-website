import 'package:flutter/material.dart';
import '../widgets/call_to_action/call_to_action.dart';
import '../widgets/why_gymprove/why_gymprove.dart';
import '../constants/export.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WhyGymprove(),
        Expanded(
            child: Center(
                child: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Strings.contactUsPath),
                    child: CallToAction(Strings.btnText))))
      ],
    );
  }
}
