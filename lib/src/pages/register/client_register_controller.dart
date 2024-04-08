import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/models/user.dart';
import 'package:flutter_udemy/src/provider/users_provider.dart';
import 'package:flutter_udemy/src/utils/my_snackbar.dart';

class RegisterController {
  late BuildContext context; // Cambiado a non-null para evitar el error

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confpasswordController = TextEditingController();

  UsersProvider usersProvider = UsersProvider();

  Future<void> init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context); // await agregado aquí
  }

  void register() async {
    String email = emailController.text.trim();
    String name = nameController.text;
    String phone = phoneController.text.trim();
    String pass = passwordController.text.trim();
    String cpass = confpasswordController.text.trim();

    if (email.isEmpty || name.isEmpty || phone.isEmpty || pass.isEmpty ||
        cpass.isEmpty) {
      MySnackbar.show(context, 'Debes llenar todos los campos');
      return;
    }

    if (cpass != pass) {
      MySnackbar.show(context, 'Las contraseñas no coinciden');
      return;
    }

    if (pass.length < 6) {
      MySnackbar.show(
          context, 'La contraseña debe tener al menos 6 caracteres');
      return;
    }

    User user = User(
      name: name,
      email: email,
      phone: phone,
      password: pass,
    );

    // Desempaquetar el valor opcional ResponseApi?
    ResponseApi responseApi = (await usersProvider.create(user))!;

    MySnackbar.show(context, responseApi.message!);

    print('RESPUESTA: ${responseApi.toJson()}');
  }
}
