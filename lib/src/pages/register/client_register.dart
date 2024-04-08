import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_udemy/src/pages/register/client_register_controller.dart';
import 'package:flutter_udemy/src/utils/my_colors.dart';


class ClientRegister extends StatefulWidget {
  const ClientRegister({Key? key}) : super(key: key);

  @override
  _ClientRegisterState createState() => _ClientRegisterState();
}

class _ClientRegisterState extends State<ClientRegister> {
  RegisterController _con = new RegisterController();
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
                _imageuser(),
                _textfemail (),
                _textnombre (),
                _texttelefono(),
                _textcont(),
                _textcofcont(),
                _btnLogin(),
              ],
            ),
          ),
        )
    );
  }

Widget _imageuser(){
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/img/usuario.png'),
        radius: 60,
        backgroundColor: Colors.brown[50],
      ),
    );

}

Widget _txtlogo() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/img/construccion.png',
          width: 100,
          height: 100,
        ),
        SizedBox(width: 20,),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            'Crea tu cuenta',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.brown[300]
            ),
          ),
        ),
      ],
    ),
  );
}
  Widget _textfemail (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 40, bottom: 5 ),
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
  Widget _textnombre (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 10, bottom: 5 ),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpaco,
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: _con.nameController,
        decoration: InputDecoration(
            hintText: 'Nombre y Apellido',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColor
            ),

            prefixIcon: Icon(
              Icons.account_circle,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _texttelefono (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 10, bottom: 5 ),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpaco,
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: _con.phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Teléfono',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColor
            ),

            prefixIcon: Icon(
              Icons.phone,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }
  Widget _textcont (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 10, bottom: 5 ),
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
  Widget _textcofcont (){
    return Container(

      margin: EdgeInsets.only(left:50, right: 50, top: 10, bottom: 5 ),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpaco,
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: _con.confpasswordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirmar contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: MyColors.primaryColor
            ),

            prefixIcon: Icon(
              Icons.lock_outline_sharp,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }
  Widget _btnLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 15),
      child: ElevatedButton(
        onPressed: _con.register,
        child: Text(
          'REGISTRARSE',
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
}
