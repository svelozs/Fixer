import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/pages/client/services/list/client_services_list_controller.dart';
import 'package:flutter/scheduler.dart';
class ClientServicesListPage extends StatefulWidget {
  const ClientServicesListPage({super.key});

  @override
  State<ClientServicesListPage> createState() => _ClientServicesListPageState();
}

class _ClientServicesListPageState extends State<ClientServicesListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed:(){}  ,// _con.logout(),
          child: Text('Cerrar Sesión'),
        ),
      ),
    );
  }
}
