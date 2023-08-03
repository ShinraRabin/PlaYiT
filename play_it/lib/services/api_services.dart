import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:play_it/Screens/Login/Login.dart';
import 'package:play_it/Screens/layouts/layouts.dart';
import 'package:play_it/config.dart';


class ApiServices {
  static var client = http.Client();
   static const String baseUrl = Config.apiurl;

  registerAuthData(BuildContext context,String username, String email, String password)async {
  print(email);
  print(password);
  print(username);
  

  Map<String, dynamic> user = {'username':username,'password': password, 'email': email};
  String jsonUser = jsonEncode(user);

  final dio = Dio();

  try {
    final response = await dio.post(
      '$baseUrl/register',
      data: jsonUser,
    );

    print(response.data);

    
    if (response.data['message'] == "register sucessfull") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  } catch (error) {
    // Handle any errors here
    print('Error: $error');
  }
}

  sendAuthData(BuildContext context, String email, String password) async {
  print(email);
  print(password);
  Map<String, dynamic> user = {'password': password, 'email': email};
  String jsonUser = jsonEncode(user);

  final dio = Dio();

  try {
    final response = await dio.post(
      '$baseUrl/login',
      data: jsonUser,
    );

    print(response.data);

    
    if (response.data['message'] == "login sussfully") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Layout()),
      );
    }
  } catch (error) {
    // Handle any errors here
    print('Error: $error');
  }
}

 googlelogin(BuildContext context, )  async {
  
  final dio = Dio();
  try {
    final response = await dio.get("$baseUrl/google/callback");

    print(response.data);

    if (response.data['message'] == "google login sucessfull") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Layout()),
      );
    }

  } catch (error){
    print("Error: $error");

  }

}

  
}
