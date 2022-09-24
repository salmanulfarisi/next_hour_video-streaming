import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/modules/login/view/widgets/auth_card.dart';
import 'package:next_hour/app/modules/login/view/widgets/buttons.dart';
import 'package:next_hour/app/modules/login/view/widgets/dividertext.dart';
import 'package:next_hour/app/modules/signup/controller/signup_controller.dart';
import 'package:next_hour/app/modules/utilities/size/size.dart';
import 'package:next_hour/app/modules/utilities/styles/textstyles.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class SignUpView extends GetView<SignupController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.signupFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/authpic.svg',
                  height: 200,
                ),
                const Text(
                  'Craete your Account',
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                size20,
                TextFormField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    controller.email == value;
                  },
                  validator: (value) {
                    return controller.validateEmail(value!);
                  },
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: labelStyle,
                    hintText: 'E-mail',
                    hintStyle: labelStyle,
                    prefixIcon: const Icon(Icons.mail,
                        color: Color.fromARGB(255, 255, 17, 0)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                size20,
                Obx(
                  () => TextFormField(
                    obscureText: controller.isPasswordHidden.value,
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: labelStyle,
                        hintText: 'Password',
                        hintStyle: labelStyle,
                        prefixIcon: const Icon(Icons.fingerprint,
                            color: Color.fromARGB(255, 255, 17, 0)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              controller.isPasswordHidden.value =
                                  !controller.isPasswordHidden.value;
                            },
                            icon: Icon(
                              controller.isPasswordHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: controller.isPasswordHidden.value
                                  ? const Color.fromARGB(255, 255, 0, 0)
                                  : Colors.grey,
                            ))),
                  ),
                ),
                size20,
                TextFormField(
                  controller: controller.confirmPasswordController,
                  obscureText: controller.isPasswordHidden.value,
                  onSaved: (value) {
                    controller.confirm = value!;
                  },
                  validator: (value) {
                    return controller.passwordConfirm();
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: labelStyle,
                    hintText: 'Confirm password',
                    hintStyle: labelStyle,
                    prefixIcon: const Icon(Icons.fingerprint,
                        color: Color.fromARGB(255, 255, 17, 0)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                          fillColor: MaterialStateProperty.all(Colors.red),
                          value: controller.ckeckBool.value,
                          onChanged: (value) {
                            controller.ckeckBool.value =
                                !controller.ckeckBool.value;
                          }),
                    ),
                    const Text('Remember Me'),
                  ],
                ),
                ButtonWidgets(
                  text: 'Sign Up',
                  onPressed: () {
                    controller.checkLogin();
                  },
                ),
                const OrWidget(),
                size20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AuthCard(image: 'assets/facebook.svg'),
                    AuthCard(image: 'assets/googlelogo.svg')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Facebook'),
                    Text('Google'),
                  ],
                ),
                size40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have a Account?"),
                    width10,
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.logIn),
                      child: const Text(
                        'Sign In',
                        style: authStyle,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
