import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/pages/client/services/list/client_services_list_page.dart';
import 'package:flutter_udemy/src/pages/login/login_page.dart';
import 'package:flutter_udemy/src/pages/register/client_register.dart';
import 'package:flutter_udemy/src/pages/register/register_page.dart';
import 'package:flutter_udemy/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => loginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'clientregister': (BuildContext context) => ClientRegister(),
        'client/services/list': (BuildContext context) => ClientProductsListPage(),
      },
      theme: ThemeData(
        primaryColor: MyColors.primaryColor
      ),
    );
  }
}

//"hola fer"