import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/video_model.dart';
import 'package:next_hour/app/modules/home/controller/home_controller.dart';
import 'package:next_hour/app/modules/home/view/widgets/app_name.dart';
import 'package:next_hour/app/modules/home/view/widgets/filterchip.dart';
import 'package:next_hour/app/modules/home/view/widgets/profile.dart';
import 'package:next_hour/app/modules/home/view/widgets/video_card.dart';
import 'package:next_hour/app/modules/utilities/themes/colors.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barColor,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            'assets/app_logo.svg',
          ),
        ),
        title: const Appname(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ProfileWidgets(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FilterChipWidgets(
                      text: 'Trending',
                    ),
                    FilterChipWidgets(
                      text: 'All',
                    ),
                    FilterChipWidgets(
                      text: 'Gaming',
                    ),
                    FilterChipWidgets(
                      text: 'Entertinment',
                    ),
                    FilterChipWidgets(
                      text: 'Travel',
                    ),
                  ],
                ),
              ),
              videoCard(items[0]),
              videoCard(items[1]),
              videoCard(items[2]),
            ],
          ),
        ),
      ),
    );
  }
}
