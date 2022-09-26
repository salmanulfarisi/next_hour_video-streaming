import 'dart:convert';

UserModel userFromJson(String str) => UserModel.toObject(json.decode(str));

class UserModel {
  User user;
  String token;

  UserModel({required this.user, required this.token});

  factory UserModel.toObject(Map<String, dynamic> json) =>
      UserModel(user: User.toObject(json['user']), token: json['token']);

  Map<String, dynamic> toJson() => {"user": user.toJson(), "token": token};
}

class User {
  int id;
  String name;
  String email;

  User({required this.id, required this.email, required this.name});

  factory User.toObject(Map<String, dynamic> json) =>
      User(id: json['id'], email: json['email'], name: json['email']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
