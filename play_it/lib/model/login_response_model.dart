class LoginResponseModel {
  late final User user;

  LoginResponseModel({required this.user});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    user = (json['User'] != null ? User.fromJson(json['User']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['User'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  late final String username;
  late final String email;
  late final String role;
  late final String password;
  late final String token;

  User({required this.username, required this.email, required this.role, required this.password, required this.token});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    role = json['role'];
    password = json['password'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['role'] = this.role;
    data['password'] = this.password;
    data['Token'] = this.token;
    return data;
  }
}
