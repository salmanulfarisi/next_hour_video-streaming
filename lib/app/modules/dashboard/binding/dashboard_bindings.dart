import 'package:get/get.dart';
import 'package:next_hour/app/modules/dashboard/controller/dashboard_controller.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
