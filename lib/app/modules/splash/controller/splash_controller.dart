import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();
  @override
  void onReady() {
    super.onReady();
    if (getStorage.read('name') != null) {
      Future.delayed(const Duration(milliseconds: 4000), () {
        Get.offAllNamed(Routes.home);
      });
    } else {
      Get.offAllNamed(Routes.onBoarding);
    }
  }
}
