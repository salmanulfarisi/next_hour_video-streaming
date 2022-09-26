import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:next_hour/app/data/models/signup_model.dart/signup_model.dart';
import 'package:next_hour/app/data/models/signup_model.dart/signup_response_model.dart';
import 'package:next_hour/app/modules/utilities/strings/config.dart';

class SignupApiService {
  static var user = http.Client();
  static Future<SignupResponse> signUp(SignupModel signupModel) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    var url = Uri.parse(Config.register);
    var response = await user.post(url,
        headers: headers, body: jsonEncode(signupModel.toJson()));
    return SignupResponse(
        isSuccess: jsonDecode(response.body)['success'],
        token: jsonDecode(response.body)['token'],
        user: jsonDecode(response.body)['user']);
  }
}
