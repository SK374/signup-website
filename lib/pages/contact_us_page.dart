import 'package:flutter/material.dart';
import '../constants/sizes.dart';
import '../widgets/contact_us/contact_us_form.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[Sizes.greyLevel],
      body: Center(
        child: SizedBox(
          width: Sizes.sbWidth,
          child: Card(child: ContactUsForm()),
        ),
      ),
    );
  }
}