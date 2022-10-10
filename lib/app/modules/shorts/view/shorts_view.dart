import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_hour/app/modules/shorts/view/widgets/video_actions.dart';
import 'package:next_hour/app/modules/utilities/size/size.dart';
import 'package:next_hour/app/modules/utilities/strings/image_strings.dart';
import 'package:next_hour/app/modules/utilities/styles/textstyles.dart';

class ShortPage extends StatelessWidget {
  const ShortPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              ema,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(ema),
                        ),
                      ),
                      width10,
                      const Text(
                        "Ema movies",
                        style: videoTitleStyle,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      VideoActionsWidgets(icon: Icons.thumb_up, title: '2.8k'),
                      VideoActionsWidgets(icon: Icons.thumb_down, title: '599'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: VideoActionsWidgets(
                            icon: Icons.comment_rounded, title: '699'),
                      ),
                      VideoActionsWidgets(
                          icon: CupertinoIcons.arrowshape_turn_up_right_fill,
                          title: 'Share'),
                      VideoActionsWidgets(
                          icon: Icons.more_horiz_rounded, title: 'More'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
