class SignupResponseModel {
  SignupResponseModel({
    required this.success,
    required this.message,
  });

  final bool success;
  final String message;

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      SignupResponseModel(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}










// import 'dart:convert';

// SignupResponseModel signupResponseModelFromJson(String str) =>
//     SignupResponseModel.fromJson(json.decode(str));

// String signupResponseModelToJson(SignupResponseModel data) =>
//     json.encode(data.toJson());

// class SignupResponseModel {
//   SignupResponseModel({
//     required this.success,
//     required this.message,
//   });

//   bool success;
//   String message;

//   factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
//       SignupResponseModel(
//         success: json["success"],
//         message: json["message"],
//       );

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "message": message,
//       };
// }



// import 'dart:convert';

// SignupResponse signupResponse(String str) =>
//     SignupResponse.fromJson(json.decode(str));

// class SignupResponse {
//   late final bool isSuccess;
//   late final String token;
//   late final User? user;

//   SignupResponse(
//       {required this.isSuccess, required this.token, required this.user});

//   SignupResponse.fromJson(Map<String, dynamic> json) {
//     isSuccess = json["success"];
//     token = json["token"];
//     user = json["user"] != null ? User.fromJson(json["user"]) : null;
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['success'] = isSuccess;
//     data['token'] = token;
//     data['user'] = user!.toJson();
//     return data;
//   }
// }

// class User {
//   late final String id;
//   late final String email;

//   User({required this.id, required this.email});

//   User.fromJson(Map<String, dynamic> json) {
//     id = json["_id"];
//     email = json["email"];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data["_id"] = id;
//     data["email"] = email;
//     return data;
//   }
// }
