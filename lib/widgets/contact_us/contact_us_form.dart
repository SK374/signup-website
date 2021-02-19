import 'package:flutter/material.dart';
import '../../animations/animation_progress_indicator.dart';
import '../../constants/export.dart';

class ContactUsForm extends StatefulWidget {
  @override
  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  final _yourNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _messageTextController = TextEditingController();

  double _formProgress = Sizes.formProgNum;
  void _updateFormProgress() {
    var progress = Sizes.progressNum;
    var controllers = [
      _yourNameTextController,
      _emailTextController,
      _messageTextController
    ];
    for (var controller in controllers) {
      if (controller.value.text.isNotEmpty) {
        progress += Sizes.progNum / controllers.length;
      }
    }
    setState(() {
      _formProgress = progress;
    });
  }

  void _showContactUsPage() {
    Navigator.of(context).pushNamed(Strings.landingPath);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: _updateFormProgress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedProgressIndicator(value: _formProgress),
          Padding(
            padding: Sizes.padAll20,
            child: Text(Strings.btnText,
                style: Theme.of(context).textTheme.headline4),
          ),
          Padding(
            padding: Sizes.padTFF,
            child: TextFormField(
              controller: _yourNameTextController,
              decoration: InputDecoration(
                hintText: Strings.name,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: Sizes.padTFF,
            child: TextFormField(
              controller: _emailTextController,
              decoration: InputDecoration(
                hintText: Strings.email,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: Sizes.padTFF,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 7,
              controller: _messageTextController,
              decoration: InputDecoration(
                hintText: Strings.message,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : Colors.white;
              }),
              backgroundColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled)
                    ? null
                    : primaryColor;
              }),
            ),
            onPressed: _formProgress == Sizes.progNum ? _showContactUsPage : null,
            child: Padding(
              padding: Sizes.padAll20,
              child: Text(Strings.submit),
            ),
          ),
        ],
      ),
    );
  }
}