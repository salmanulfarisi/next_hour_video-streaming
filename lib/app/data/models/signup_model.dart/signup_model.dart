class SignupModel {
  SignupModel({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}













// class SignupModel {
//   late final String email;
//   late final String password;
//   SignupModel({required this.email, required this.password});

//   SignupModel.fromJson(Map<String, dynamic> json) {
//     email = json["email"];
//     password = json["password"];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data["email"] = email;
//     data["password"] = password;
//     return data;
//   }
// }
