// import 'dart:async';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:next_hour/app/data/models/login_models/login_model.dart';
// import 'package:next_hour/app/data/models/login_models/login_response.dart';
// import 'package:next_hour/app/modules/utilities/strings/config.dart';

// class API {
//   final dio = Dio(BaseOptions(baseUrl: Config.apiUrl));
//   Future<LoginResponse?> loginUser(LoginModel model) async {
//     try {
//       final re = await checkIn();
//       if (re) {
//         Response response = await dio.post(Config.login, data: model.toJson());
//         if (response.statusCode != 200) {
//           return LoginResponse.fromJson(response.data);
//         }
//       }
//     } on TimeoutException catch (e) {
//       debugPrint(e.toString());
//     } on SocketException catch (e) {
//       debugPrint(e.toString());
//     } catch (e) {
//       if (e is DioError) {
//         if (e.response?.data == null) {
//           return LoginResponse(success: true);
//         }
//         return LoginResponse.fromJson(e.response!.data);
//       } else {
//         return LoginResponse(success: true);
//       }
//     }
//     return null;
//   }

//   checkIn() async {
//     bool result = await InternetConnectionChecker().hasConnection;
//     if (result == true) {
//       print('Got Internet');
//     } else {
//       print('no network connecion');
//     }
//     return result;
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:next_hour/app/data/models/login_models/login_model.dart';
import 'package:next_hour/app/data/models/login_models/login_response.dart';
import 'package:next_hour/app/modules/login/controller/service/shared_service.dart';
import 'package:next_hour/app/modules/utilities/strings/config.dart';

class LoginApiService {
  static var user = http.Client();
  static Future<bool> login(LoginModel loginModel) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    var url = Uri.parse(Config.login);
    print(loginModel.toJson());
    var response = await user.post(
      url,
      // headers: headers,
      body: loginModel.toJson(),
    );
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200 || response.statusCode == 201) {
      // shared
      print(response.body);
      await LoginSharedService.saveLogin(loginResponseFromJson(response.body));
      return true;
    } else {
      return false;
    }
  }
}
