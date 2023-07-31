class RegisterRequestModel {
  late final String username;
  late final String email;
  late final String password;
  late final String confirmpassword;

  RegisterRequestModel(
      {required this.username, required this.email, required this.password, required this.confirmpassword});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
    confirmpassword = json['confirmpassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['confirmpassword'] = this.confirmpassword;
    return data;
  }
}
