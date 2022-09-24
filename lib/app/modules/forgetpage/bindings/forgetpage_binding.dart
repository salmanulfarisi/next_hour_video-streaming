import 'package:get/get.dart';
import 'package:next_hour/app/modules/forgetpage/controller/forgetpage_controller.dart';

class ForgetPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPageController());
  }
}
