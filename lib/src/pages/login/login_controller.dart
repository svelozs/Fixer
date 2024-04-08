import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/provider/users_provider.dart';
import 'package:flutter_udemy/src/utils/my_snackbar.dart';

class LoginController {
  late BuildContext context;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  UsersProvider usersProvider = UsersProvider();

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
    print('Respuesta object: ${responseApi}');
    print('Respuesta: ${responseApi?.toJson()}');
    if (responseApi != null) {
      MySnackbar.show(context, responseApi.message ?? '');
    } else {
      MySnackbar.show(context, 'Error desconocido');
    }
  }
}
