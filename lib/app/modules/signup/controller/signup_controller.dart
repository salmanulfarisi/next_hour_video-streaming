import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_model.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_response_model.dart';
import 'package:next_hour/app/modules/login/view/login_screen.dart';
import 'package:next_hour/app/modules/signup/service/api_service.dart';
// import 'package:get_storage/get_storage.dart';

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

  void callSignupApi() async {
    final data = SignupModel(
        email: emailController.text, password: passwordController.text);
    SignupResponseModel? response = await SignupService().signupUser(data);
    if (response != null) {
      log(response.toString());
      if (response.success == true) {
        Get.defaultDialog(
            title: 'Account created',
            content:
                const Text('Confirm mail sent to YOur Account plz Check it'),
            onConfirm: () {
              Get.to(() => const LoginPage());
            },
            onCancel: () {
              Get.back();
            });
      }
    } else {
      log(response.toString());
    }
  }

  // void callSignupApi() async {
  //   final data = SignupModel(
  //       email: emailController.text, password: passwordController.text);
  //   SignupResponseModel? signupResponse =
  //       await SignupService().signupUser(data);
  //   if (signupResponse == null) {
  //     Fluttertoast.showToast(msg: 'no response');
  //     return;
  //   } else if (signupResponse.success == true) {
  //     Fluttertoast.showToast(msg: 'Account Created Successfully');
  //     Get.defaultDialog(
  //         title: 'Account Created Successfully',
  //         content: const Text(
  //             'Conformation Mail sent to your E-mail. please Verify and come back'),
  //         onConfirm: () {
  //           Get.to(() => const LoginPage());
  //         },
  //         onCancel: () {
  //           Get.back();
  //         });
  //   } else if (signupResponse.success != true) {
  //     Fluttertoast.showToast(msg: ('ksakfsa;f'));
  //   } else {
  //     Fluttertoast.showToast(msg: 'Something went wrong');
  //   }
  // }

  // // callSignupApi() async {
  // //   final data = SignupModel(
  // //       email: emailController.text, password: passwordController.text);
  // //       SignupResponseModel responseModel = await SignupApiService().signupUser(data)
  // // }

  // // checkSignUp() {
  // //   if (validateAndSave()) {
  // //     isAPIcallProcess.value = true;
  // //     SignupModel model = SignupModel(
  // //       email: email,
  // //       password: password,
  // //     );
  //     SignupApiService.signUp(model).then((response) {
  //       if (response.user != null) {
  //         Fluttertoast.showToast(msg: "Successfully Registerd");
  //         Get.offAllNamed(Routes.home);
  //       } else {
  //         Fluttertoast.showToast(msg: 'error');
  //       }
  //     });
  //   }
  // }

}
