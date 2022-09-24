import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/onboardingmodel.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class OnboardingController extends GetxController {
  var selectedpageIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  bool get isLastpage => selectedpageIndex.value == contents.length - 1;

  forwardAction() {
    if (isLastpage) {
      //go to Home
      Get.offNamed(Routes.logIn);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }
}
