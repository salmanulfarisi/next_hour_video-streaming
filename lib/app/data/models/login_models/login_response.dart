import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

class LoginResponse {
  final bool? success;
  final String? token;
  final User? user;
  // String? message;
  LoginResponse({
    this.success,
    this.token,
    this.user,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
      // message: json['message'] ?? 'no response',
      success: json['success'],
      token: json['token'],
      user: User.fromJson(json['user']));

  // LoginResponse.fromJson(Map<String, dynamic> json) {
  //   success = json['success'];
  //   token = json['token'];
  //   user = User.fromJson(json['user']);
  // }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['token'] = token;
    data['user'] = user!.toJson();
    return data;
  }
}

class User {
  User({
    required this.email,
    required this.id,
    required this.username,
  });
  late final Email email;
  late final String id;
  late final String username;

  User.fromJson(Map<String, dynamic> json) {
    email = Email.fromJson(json['email']);
    id = json['_id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email.toJson();
    data['_id'] = id;
    data['username'] = username;
    return data;
  }
}

class Email {
  Email({
    required this.verified,
    required this.address,
  });
  late final bool verified;
  late final String address;

  Email.fromJson(Map<String, dynamic> json) {
    verified = json['verified'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['verified'] = verified;
    data['address'] = address;
    return data;
  }
}





// import 'dart:convert';

// LoginResponse loginResponse(String str) =>
//     LoginResponse.fromJson(json.decode(str));

// class LoginResponse {
//   late final bool isSuccess;
//   late final String token;
//   late final User user;
//   LoginResponse(
//       {required this.isSuccess, required this.token, required this.user});

//   LoginResponse.fromJson(Map<String, dynamic> json) {
//     isSuccess = json["success"];
//     token = json["token"];
//     user = User.fromJson(json["user"]);
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['success'] = isSuccess;
//     data['token'] = token;
//     data['user'] = user.toJson();
//     return data;
//   }
// }

// class User {
//   late final String id;
//   late final String email;

//   User({required this.id, required this.email});

//   User.fromJson(Map<String, dynamic> json) {
//     id = json["id"];
//     email = json["email"];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data["id"] = id;
//     data["email"] = email;
//     return data;
//   }
// }
