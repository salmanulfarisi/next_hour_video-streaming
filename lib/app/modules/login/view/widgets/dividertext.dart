import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width / 4.5,
            child: const Divider(color: Colors.white38)),
        const Text(
          'Or Continue With',
          style: TextStyle(color: Colors.white38),
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width / 4.5,
            child: const Divider(color: Colors.white38)),
      ],
    );
  }
}
