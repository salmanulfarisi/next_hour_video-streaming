import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/modules/onboarding/view/onbording.dart';
import 'package:next_hour/app/modules/splash/controller/splash_controller.dart';
import 'package:page_transition/page_transition.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        child: Center(child: SvgPicture.asset('assets/nexthour logo.svg')),
      ),
      backgroundColor: const Color.fromARGB(255, 63, 63, 63),
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      splashIconSize: 400,
      nextScreen: const OnbBoardingView(),
    );
  }
}
