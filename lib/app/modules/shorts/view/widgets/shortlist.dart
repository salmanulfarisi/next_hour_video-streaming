import 'package:flutter/cupertino.dart';
import 'package:next_hour/app/modules/utilities/strings/image_strings.dart';

class ShortLists extends StatelessWidget {
  final String name;
  final String profilePic;
  final String vid;
  final String caption;
  final String likes;
  final String comments;
  const ShortLists({
    Key? key,
    required this.name,
    required this.profilePic,
    required this.vid,
    required this.caption,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.network(
            eagleThumnail,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
