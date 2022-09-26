import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:next_hour/app/data/models/login_models/login_model.dart';
import 'package:next_hour/app/modules/login/controller/service/api_service.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class LoginController extends GetxController {
  // final getStorage = GetStorage();
  var isPasswordHidden = true.obs;
  var ckeckBool = false.obs;
  var isAPIcallProcess = false.obs;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide a valid Email";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be 6 characters";
    } else {
      return null;
    }
  }

  // void checkLogin() {
  //   final isValid = loginFormKey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   loginFormKey.currentState!.save();
  //   Get.offAllNamed(Routes.dashboardPage);
  //   getStorage.write('id', 1);
  //   getStorage.write("name", emailController.text);
  // }
  bool validateAndSave() {
    final form = loginFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  checkLogin() {
    if (validateAndSave()) {
      isAPIcallProcess.value = true;
      LoginModel model = LoginModel(
        email: emailController.text,
        password: passwordController.text,
      );
      LoginApiService.login(model).then((response) {
        if (response) {
          print(response);
          Get.offAllNamed(Routes.dashboardPage);
        } else {
          Get.snackbar("Error", 'Something Went Wrong');
        }
      });
      // LoginApiService.login(model).then((response) {
      //   if (response) {
      //     print('$response.jai');
      //     Get.offAllNamed(Routes.home);
      //   } else {
      //     Get.snackbar("Error", "Invalid Username/Password !",
      //         snackPosition: SnackPosition.TOP);
      //   }
      // });
    }
  }

//   callLoginApi() async {
//     final data = LoginModel(
//         email: emailController.text, password: passwordController.text);
//     LoginResponse? response = await API().loginUser(data);
//     if (response != null) {
//       log(response.success.toString());
//       if (response.success!) {
//         storedataLogin(response);
//         Get.offAllNamed(Routes.home);
//       } else {
//         print(response.success.toString());
//       }
//     }
//   }

//   FlutterSecureStorage storage = const FlutterSecureStorage();
//   storedataLogin(LoginResponse response) async {
//     await storage.write(key: 'token', value: response.token);
//     await storage.write(key: 'user', value: response.user!.email.address);
//   }
// }
}
