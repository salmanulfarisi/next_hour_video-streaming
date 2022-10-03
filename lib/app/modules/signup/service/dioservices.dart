import 'package:dio/dio.dart';
import 'package:next_hour/app/modules/utilities/strings/config.dart';

class DioServies {
  static final dio = Dio(BaseOptions(baseUrl: Config.apiUrl));

  static Future<Response<dynamic>> postFunction(
      {required String url, required value}) async {
    return await dio.post(url, data: value).then((value) => value);
  }
}
