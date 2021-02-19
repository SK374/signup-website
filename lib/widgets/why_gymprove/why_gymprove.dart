import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../constants/export.dart';

class WhyGymprove extends StatelessWidget {
  const WhyGymprove({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? Sizes.tabAndMoTitleSz
              : Sizes.desktopTitleSz;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile ||
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet
              ? Sizes.descTabAndMobSz
              : Sizes.descDesktopSz;

      return Container(
        width: Sizes.titleContW,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: Sizes.titlePad,
              child: Text(Strings.landingHead,
                  style: TextStyle(
                      fontSize: titleSize,
                      fontWeight: FontWeight.w800,
                      height: Sizes.headTextHgt),
                  textAlign: textAlignment),
            ),
            Sizes.titleSzBox,
            Text(
              Strings.landingBody,
              style: TextStyle(fontSize: descriptionSize, height: Sizes.bodyTextHgt),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
