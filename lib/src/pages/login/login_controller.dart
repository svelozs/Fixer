import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_udemy/src/models/response_api.dart';
import 'package:flutter_udemy/src/provider/users_provider.dart';
import 'package:flutter_udemy/src/utils/my_snackbar.dart';
class LoginController{
 BuildContext? context;
 TextEditingController emailControler = new TextEditingController();
 TextEditingController passwordControler = new TextEditingController();

 UsersProvider usersProvider = new UsersProvider();

 Future? init(BuildContext context) async {
   this.context = context;
   await usersProvider.init(context);
 }
 void goToRegisterPage(){
   Navigator.pushNamed(context!, 'register');
 }

 void login() async {
   String email = emailControler.text.trim(); //eliminar espacios en blanco
   String password = passwordControler.text.trim();
   ResponseApi? responseApi = await usersProvider.login(email, password);
   MySnackbar.show(context, responseApi.message);
 }

}