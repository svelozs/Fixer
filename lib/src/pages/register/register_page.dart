import 'package:flutter/material.dart';

import 'client_register.dart';
import 'prest_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[50],
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _txtlogo(),
              _imgCliente(context),
              _txtCliente(),
              _imgPrestador(context),
              _txtPrestador(),
            ],
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
}

Widget _imgCliente(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ClientRegister()),
      );
    },
    child: Container(
      margin: EdgeInsets.only(left: 80, top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/img/cliente.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    ),
  );
}

Widget _txtCliente() {
  return Container(
    child: GestureDetector(
      onTap: () {
      },
      child: Text(
        'Cliente',
        style: TextStyle(
          color: Colors.brown[300],
          fontSize: 20,
        ),
      ),
    ),
  );
}

Widget _imgPrestador(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PrestRegister()),
      );
    },
    child: Container(
      margin: EdgeInsets.only(left: 80, top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/img/prestador.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    ),
  );
}

Widget _txtPrestador(){
  return Container(
    child: Text(
      'Prestador',
      style: TextStyle(
        color:  Colors.brown[300],
        fontSize: 20,
      ),
    ),
  );
}
