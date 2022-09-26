import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_model.dart';
import 'package:next_hour/app/modules/signup/controller/service/api_service.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class SignupController extends GetxController {
  // final getStorage = GetStorage();
  var isPasswordHidden = true.obs;
  var ckeckBool = false.obs;
  var isAPIcallProcess = false.obs;
  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  late TextEditingController emailController,
      passwordController,
      confirmPasswordController;
  var email = '';
  var password = '';
  var confirm = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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

  String? passwordConfirm() {
    if (passwordController.text == confirmPasswordController.text) {
      return null;
    }
    return "Password doesn't match";
  }

  // bool passwordConfirmed() {
  //   if (passwordController.text == confirmPasswordController.text) {
  //     return true;
  //   }
  //   return false;
  // }

  // void checkLogin() {
  //   final isValid = signupFormKey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   signupFormKey.currentState!.save();
  //   Get.toNamed(Routes.dashboardPage);
  //   getStorage.write("key", 1);
  // }

  bool validateAndSave() {
    final form = signupFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  checkSignUp() {
    if (validateAndSave()) {
      isAPIcallProcess.value = true;
      SignupModel model = SignupModel(
        email: email,
        password: password,
      );
      SignupApiService.signUp(model).then((response) {
        if (response.user != null) {
          Fluttertoast.showToast(msg: "Successfully Registerd");
          Get.offAllNamed(Routes.home);
        } else {
          Fluttertoast.showToast(msg: 'error');
        }
      });
    }
  }
}
