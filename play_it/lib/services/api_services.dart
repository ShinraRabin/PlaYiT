import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:play_it/config.dart';
import 'package:play_it/model/login_request_model.dart';
import 'package:play_it/model/login_response_model.dart';
import 'package:play_it/model/register_request_model.dart';
import 'package:play_it/model/register_response_model.dart';

import 'shared_services.dart';

class ApiServices {
  static var client = http.Client();

  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
    };

    var url = Uri.http(Config.apiurl, Config.loginApi);
    print(url);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(loginResponseJson(response.body));
      return true;
    } else {
      return false;
    }
  }

  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content Type ': 'application/json',
    };

    var url = Uri.http(Config.apiurl, Config.registerApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return registerResponseModel(response.body);
  }

  sendAuthData(email, password) async {
    print(email);
    print(password);
    Map<String, dynamic> user = {'password': password, 'email': email};
    String jsonUsser = jsonEncode(user);

    // var url = Uri.http(
    //   Config.apiurl,
    //   Config.loginApi,
    // );

    // var res = await http.post(url, body: jsonUsser);

    // print(res.contentLength);

    final dio = Dio();

    final response = await dio.post(
        'https://c9ea-27-34-17-140.ngrok-free.app/login',
        data: jsonUsser);
    print(response.data);
  }
}
