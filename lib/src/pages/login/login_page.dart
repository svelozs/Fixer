import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_udemy/src/pages/login/login_controller.dart';
import 'package:flutter_udemy/src/utils/my_colors.dart';
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  LoginController _con = new LoginController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _txtlogo(),
             _txtinicio(),
             _textfemail(),
              _textfpass(),
              _btnLogin(),
              _txtRegistrate(),
              _txtTerminos(),
            ],
          ),
        ),
      )
    );
  }

  Widget _txtlogo(){
    return Container(
      margin: EdgeInsets.only(top:40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start ,
        children: [
          Image.asset(
            'assets/img/construccion.png',
            width: 100,
            height: 100,
          ),
          SizedBox(width: 20,),
          Container(
            margin: EdgeInsets.only(top:20),
            child: Text(
              'FIXER',
              style: TextStyle(

                  fontWeight: FontWeight.w900,
                  fontSize: 60,
                  color:  Colors.brown[300]
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _txtinicio(){
    return Container(
      margin: EdgeInsets.only(top:100),
      child: Text(
        'Iniciar sesión',
        style: TextStyle(
            color:  Colors.brown[300],
            fontSize: 20,
        ),
      ),
    );
  }
  Widget _textfemail (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 20, bottom: 10 ),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpaco,
        borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: _con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo electrónico',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),

          prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColor,
          )
        ),
      ),
    );
  }
  Widget _textfpass(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpaco,
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: _con.passwordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColor
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }
  Widget _btnLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50, top: 80, bottom: 15),
      child: ElevatedButton(
        onPressed: _con.login,
        child: Text(
            'INGRESAR',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
            padding:   EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }
  Widget _txtRegistrate(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
              color: Colors.brown[300]
          ),
        ),
        SizedBox(width: 7,),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text(
            'Regístrate',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _txtTerminos (){
    return Container(
      margin: EdgeInsets.only(top:140),
      child: Text(
        'Terminos y condiciones',
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color:  Colors.brown[300]
        ),
      ),
    );
  }
}
