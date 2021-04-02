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
