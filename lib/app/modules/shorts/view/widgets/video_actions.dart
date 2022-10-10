import 'package:flutter/material.dart';

class VideoActionsWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? color;
  const VideoActionsWidgets(
      {Key? key, required this.icon, required this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                size: 30,
              )),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
