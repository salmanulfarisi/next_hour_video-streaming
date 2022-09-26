import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class HomeController extends GetxController {
  // final getstorage = GetStorage();
  var name = '';

  logout() {
    // getstorage.erase();
    Get.offAllNamed(Routes.splash);
  }
}
