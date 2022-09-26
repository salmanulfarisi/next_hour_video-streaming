class RegsiterModel {
  String email;
  String password;

  RegsiterModel({required this.email, required this.password});

  factory RegsiterModel.fromJson(Map<String, dynamic> json) =>
      RegsiterModel(email: json["email"], password: json["password"]);

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
