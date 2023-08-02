import 'dart:convert';


RegisterResponseModel registerResponseModel(String str) =>
  RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  late final User user;

  RegisterResponseModel({required this.user});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    user = (json['User'] != null ? User.fromJson(json['User']) : null)!;
  }

  get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['User'] = user.toJson();
    return data;
  }
}

class User {
  late final String username;
  late final String email;
  late final String role;
  late final String password;

  User({required this.username, required this.email, required this.role, required this.password});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    role = json['role'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = this.username;
    data['email'] = this.email;
    data['role'] = this.role;
    data['password'] = this.password;
    return data;
  }
}
