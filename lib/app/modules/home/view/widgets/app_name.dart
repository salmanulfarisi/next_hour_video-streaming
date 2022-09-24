import 'package:flutter/material.dart';

class Appname extends StatelessWidget {
  const Appname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
              text: 'N',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 17, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
          TextSpan(
              text: 'EXT ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black)),
          TextSpan(
            text: 'H',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 17, 0),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          TextSpan(
              text: 'OUR',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black))
        ],
      ),
    );
  }
}
