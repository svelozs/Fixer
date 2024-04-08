import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/api/environment.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/models/user.dart';
import 'package:flutter_udemy/src/pages/login/login_page.dart';
import 'package:http/http.dart' as http;
class UsersProvider{
  String _url = Environment.API_FIXER;
  String _api = '/api/users';

  BuildContext? context;

  Future? init(BuildContext){
    this.context = context;
  }

  Future<ResponseApi?> create(User user)async{
    try{
      Uri url = Uri.http(_url, '$_api/create');
      String bodyParams = json.encode(user);
      Map<String, String> headers ={
        'Content-type': 'application/json'
      };
      final res = await http.post(url, headers: headers, body: bodyParams);
      final data = json.decode(res.body);
      ResponseApi responseApi = ResponseApi.fromJson(data);
      return responseApi;
    }catch(e){
      print('Error: $e');
      return null;
    }
  }
Future<ResponseApi?> login(String email, String password) async {
  try{
    Uri url = Uri.http(_url, '$_api/login');
    String bodyParams = json.encode({
      'email': email,
      'password': password
    });
    Map<String, String> headers ={
      'Content-type': 'application/json'
    };
    final res = await http.post(url, headers: headers, body: bodyParams);
    final data = json.decode(res.body);
    ResponseApi responseApi = ResponseApi.fromJson(data);
    return responseApi;
  }catch(e){
    print('Error: $e');
    return null;
  }
}
}