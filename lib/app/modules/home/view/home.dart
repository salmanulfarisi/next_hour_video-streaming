import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/modules/home/controller/home_controller.dart';
import 'package:next_hour/app/modules/home/view/widgets/app_name.dart';
import 'package:next_hour/app/modules/home/view/widgets/profile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
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
            padding: EdgeInsets.all(10.0),
            child: ProfileWidgets(),
          )
        ],
      ),
    );
  }
}
