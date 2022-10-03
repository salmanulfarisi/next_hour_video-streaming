import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Functions {
  static checkIn() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      print('Got Internet');
    } else {
      Fluttertoast.showToast(msg: 'no internet pls check It');
    }
    return result;
  }
}
