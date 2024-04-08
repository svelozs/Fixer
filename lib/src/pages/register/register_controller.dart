import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class RegistrerController{
  BuildContext? context;
  Future? init(BuildContext context){
    this.context = context;
  }
  void goToClientRegister(){
    Navigator.pushNamed(context!, 'register');
  }
}