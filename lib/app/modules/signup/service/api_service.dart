import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_model.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_response_model.dart';
import 'package:next_hour/app/modules/login/view/login_screen.dart';
import 'package:next_hour/app/modules/signup/service/dioservices.dart';
import 'package:next_hour/app/modules/utilities/functions.dart';
import 'package:next_hour/app/modules/utilities/strings/config.dart';

class SignupService {
  Future<SignupResponseModel?> signupUser(SignupModel model) async {
    if (await Functions.checkIn()) {
      try {
        final models = model.toJson();
        print(models);
        final response = await DioServies.postFunction(
            url: Config.register, value: model.toJson());
        if (response.statusCode! >= 200 && response.statusCode! <= 299) {
          Get.defaultDialog(
              title: 'created succesfully',
              content: const Text('Go to login'),
              onConfirm: () {
                Get.to(() => const LoginPage());
              },
              onCancel: () {
                Get.back();
              });
          log(response.data['message']);
          return SignupResponseModel.fromJson(response.data);
        } else {
          return SignupResponseModel.fromJson(model.toJson());
        }
      } on TimeoutException catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      } on SocketException catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      } on DioError catch (e) {
        if (e.response!.statusCode == 401) {
          log(e.response!.data['message']);
          log(e.response!.statusCode.toString());
          Fluttertoast.showToast(msg: e.message);
        } else if (e.response!.statusCode == 403) {
          Fluttertoast.showToast(msg: e.message);
        } else if (e.response!.statusCode == 400) {
          Fluttertoast.showToast(msg: e.message);
        } else {
          Fluttertoast.showToast(msg: 'something wrong');
        }
      }
    } else {
      log('internet error');
    }
    return null;
  }
}










































































// import 'dart:async';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:next_hour/app/data/models/signup_model.dart/signup_response_model.dart';
// import 'package:next_hour/app/modules/utilities/strings/config.dart';
// import 'package:next_hour/app/routes/app_routes.dart';

// class SignupApiService {
//   final dio = Dio(BaseOptions(baseUrl: Config.apiUrl));
//   Future<SignupResponseModel?> signupUser(SignupResponseModel model) async {
//     try {
//       final internetChecker = await checkIn();

//       if (internetChecker) {
//         Response response = await dio.post(Config.login, data: model.toJson());
//         print(response.statusCode);
//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Get.dialog(AlertDialog(
//             title: const Text("Register successfully"),
//             content: Text(response),
//             actions: [
//               TextButton(
//                   onPressed: () {
//                     Get.toNamed(Routes.logIn);
//                   },
//                   child: const Text('ok'))
//             ],
//           ));
//         } else {
//           Fluttertoast.showToast(msg: 'msg');
//         }
//       }
//     } on TimeoutException catch (e) {
//       Fluttertoast.showToast(msg: e.toString());
//     } on SocketException catch (e) {
//       Fluttertoast.showToast(msg: e.toString());
//     } catch (e) {
//       if (e is DioError) {
//         print(e.response?.statusCode);
//         if (e.response?.statusCode == 401) {
//           Fluttertoast.showToast(msg: e.response!.statusMessage.toString());
//         } else if (e.response?.statusCode == 409) {
//           Fluttertoast.showToast(msg: e.response!.statusMessage.toString());
//         } else if (e.response?.statusCode == 400) {
//           Fluttertoast.showToast(msg: e.response!.statusMessage.toString());
//         } else {
//           Fluttertoast.showToast(msg: 'msgooooi');
//         }
//       } else {
//         Fluttertoast.showToast(msg: 'null msg');
//       }
//     }
//     return null;
//   }

//   checkIn() async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       print('Got Internet');
//     } else {
//       Fluttertoast.showToast(msg: 'no internet pls check It');
//     }
//     return null;
//   }
//   // static var user = http.Client();
//   // static Future<SignupResponse> signUp(SignupModel signupModel) async {
//   //   Map<String, String> headers = {'Content-Type': 'application/json'};
//   //   var url = Uri.parse(Config.register);
//   //   var response = await user.post(url,
//   //       headers: headers, body: jsonEncode(signupModel.toJson()));
//   //   return SignupResponseModel(
//   //       isSuccess: jsonDecode(response.body)['success'],
//   //       token: jsonDecode(response.body)['token'],
//   //       user: jsonDecode(response.body)['user']);
//   // }
// }
