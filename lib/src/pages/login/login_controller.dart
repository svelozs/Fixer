import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/models/user.dart';
import 'package:flutter_udemy/src/provider/users_provider.dart';
import 'package:flutter_udemy/src/utils/my_snackbar.dart';
import 'package:flutter_udemy/src/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  late BuildContext context;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  UsersProvider usersProvider = new UsersProvider();
  SharedPref _sharedPref = new SharedPref();

  Future<void> init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context, 'register');
  }

  Future<void> login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    ResponseApi? responseApi = await usersProvider.login(email, password);
    print('Respuesta object: $responseApi');
    print('Respuesta: ${responseApi?.toJson()}');

    if (responseApi == null) {
      MySnackbar.show(context, 'Error desconocido');
      return;
    }

    if (responseApi.success ?? false) {
      User user = User.fromJson(responseApi.data);
      _sharedPref.save('user', user.toJson());
      Navigator.pushNamedAndRemoveUntil(context, 'client/services/list', (route) => false);
    } else {
      MySnackbar.show(context, responseApi.message ?? 'Error desconocido');
    }
  }


}





