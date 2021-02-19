import 'package:flutter/material.dart';
import './constants/export.dart';
import './pages/landing_page.dart';
import './pages/contact_us_page.dart';

void main() {
  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: Strings.fontFam),
      ),
      routes: {
        Strings.initRoutePath: (context) => LandingPage(),
        Strings.contactUsPath: (context) =>  ContactUsPage(),
      },
    );
  }
}

// Add scrolling to make singe page website

// Hosting has been added to Firebase. Isuee with setting up with custom domain. 123Reg has been updated but all settings
// need to be rechecked as site is not working live.

// Name of the project needs to be changed to gymprove_website. Can't move to new project as Firebase web hosing
// files are in this project or will need to re do that too. See my book for notes on Firebase hosting.
