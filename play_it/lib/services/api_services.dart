import 'dart:convert';

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
      'Content Type ': 'application/json',
    };

    var url = Uri.http(Config.apiurl, Config.loginApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    if (response.statusCode == 200){
      await SharedService.setLoginDetails(loginResponseJson(response.body));
      return true;

    } else {
      return false;
    }
  }

  static Future<RegisterResponseModel> register(RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      'Content Type ': 'application/json',
    };

    var url = Uri.http(Config.apiurl, Config.loginApi);

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    return registerResponseModel(response.body);
    
  }
}

