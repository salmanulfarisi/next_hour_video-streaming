import 'dart:convert';

import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:get/get.dart';
import 'package:next_hour/app/data/models/login_models/login_response.dart';
import 'package:next_hour/app/routes/app_routes.dart';

class LoginSharedService {
  static Future<bool> isLogin() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist('login_details');
    return isKeyExist;
  }

  static Future<LoginResponse?> loginDetails() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist('login_details');
    if (isKeyExist) {
      var cacheData = await APICacheManager().getCacheData('login_details');
      return loginResponseFromJson(cacheData.syncData);
    }
    return null;
  }

  static Future<void> saveLogin(LoginResponse loginResponse) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(
      key: 'login_details',
      syncData: jsonEncode(loginResponse.toJson()),
    );
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> logout() async {
    await APICacheManager().deleteCache('login_details');
    Get.offAllNamed(Routes.logIn);
  }
}
