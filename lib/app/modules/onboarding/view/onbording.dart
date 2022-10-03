import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/onboardingmodel.dart';
import 'package:next_hour/app/modules/onboarding/controller/onboarding_controller.dart';
import 'package:next_hour/app/modules/utilities/size/size.dart';
import 'package:next_hour/app/modules/utilities/styles/buttonstyles.dart';
import 'package:next_hour/app/modules/utilities/styles/textstyles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbBoardingView extends GetView<OnboardingController> {
  const OnbBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedpageIndex,
                itemCount: contents.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          contents[index].image,
                          height: 300,
                        ),
                        size50,
                        Text(
                          contents[index].discription,
                          textAlign: TextAlign.center,
                          style: onboardStyle,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Column(
              children: [
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: const ScrollingDotsEffect(
                      activeDotColor: Color.fromARGB(255, 255, 17, 0),
                      activeStrokeWidth: 2.6,
                      activeDotScale: 0.4,
                      radius: 8,
                      spacing: 10),
                ),
                size50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              // Get.to(() => const LoginPage());
                            },
                            style: elevatedButtonStyle,
                            child: const FittedBox(
                              child: Text(
                                'skip',
                                style: buttonTextStyle,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              controller.forwardAction();
                            },
                            style: elevatedButtonStyle,
                            child: Obx(() {
                              return FittedBox(
                                child: Text(
                                  controller.isLastpage ? 'Continue' : 'Next',
                                  style: buttonTextStyle,
                                ),
                              );
                            })),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
