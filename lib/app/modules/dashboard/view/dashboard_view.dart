import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/modules/add/view/shorts_view.dart';
import 'package:next_hour/app/modules/dashboard/controller/dashboard_controller.dart';
import 'package:next_hour/app/modules/home/view/home.dart';
import 'package:next_hour/app/modules/library/view/view.dart';
import 'package:next_hour/app/modules/shorts/view/shorts_view.dart';
import 'package:next_hour/app/modules/subscriptions/view/view.dart';
import 'package:next_hour/app/modules/utilities/themes/colors.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeView(),
            ShortPage(),
            // ShortsView(
            //   index: 0,
            // ),
            AddPageView(),
            SubscriptionsPage(),
            LibraryPage()
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.shifting,
          showUnselectedLabels: false,
          items: [
            bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            bottomNavigationBarItem(
                icon: CupertinoIcons.video_camera, label: 'Shorts'),
            bottomNavigationBarItem(
                icon: CupertinoIcons.add_circled, label: 'Add'),
            bottomNavigationBarItem(
                icon: CupertinoIcons.play_rectangle_fill,
                label: 'Subscription'),
            bottomNavigationBarItem(
                icon: CupertinoIcons.list_bullet_below_rectangle,
                label: 'Library'),
          ],
        ),
      );
    });
  }

  bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
        backgroundColor: barColor,
        icon: Icon(
          icon,
        ),
        label: label);
  }
}
