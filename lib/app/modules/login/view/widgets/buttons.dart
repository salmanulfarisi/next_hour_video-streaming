// --onboardButton

import 'package:flutter/material.dart';
import 'package:next_hour/app/modules/utilities/styles/textstyles.dart';

class ButtonWidgets extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonWidgets({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 255, 17, 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          child: Text(
            text,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
