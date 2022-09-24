import 'package:get/get.dart';
import 'package:next_hour/app/modules/onboarding/controller/onboarding_controller.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
