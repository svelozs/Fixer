import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/models/user.dart';
import 'package:flutter_udemy/src/provider/users_provider.dart';
import 'package:flutter_udemy/src/utils/my_snackbar.dart';
import 'package:flutter_udemy/src/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  BuildContext? context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();


  UsersProvider usersProvider = new UsersProvider();
  SharedPref _sharedPref = SharedPref();

  Future init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);

    User user = User.fromJson(await _sharedPref.read('user') ?? {});

    print('Usuario: ${user.toJson()}');

    if (user?.sessionToken != null) {
      Navigator.pushNamedAndRemoveUntil(context, 'client/services/list', (route) => false);
    }

  }

  void goToRegisterPage() {
    Navigator.pushNamed(context!, 'register');
  }

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    ResponseApi? responseApi = await usersProvider.login(email, password);

    if (responseApi!.success!) {
      User user = User.fromJson(responseApi.data);
      _sharedPref.save('user', user.toJson());
      Navigator.pushNamedAndRemoveUntil(context!, 'client/services/list', (route) => false);
    } else {
      MySnackbar.show(context!, responseApi.message!);
    }

    print('Respuesta object: $responseApi');
    print('Respuesta: ${responseApi?.toJson()}');
  }


  }







