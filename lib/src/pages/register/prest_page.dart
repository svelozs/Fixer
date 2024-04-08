import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/utils/my_colors.dart';


class PrestRegister extends StatefulWidget {
  const PrestRegister({super.key});

  @override
  State<PrestRegister> createState() => _PrestRegisterState();
}

class _PrestRegisterState extends State<PrestRegister> {
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
                _textfemail (),
                _textnombre (),
                _texttelefono(),
                _textcont(),
                _textcofcont(),
                _btnDocs(),
                _btnLogin(),
              ],
            ),
          ),
        )
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

      margin: EdgeInsets.only(left:50, right: 50, top: 70, bottom: 5 ),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpaco,
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
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
      margin: EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 15),
      child: ElevatedButton(
        onPressed: (){},
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
  Widget _btnDocs(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:50, right: 50, top: 10, bottom: 5),
      child: ElevatedButton(
        onPressed: (){},
        child: Text(
          'Subir documentos',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown[100],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding:   EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }
}
