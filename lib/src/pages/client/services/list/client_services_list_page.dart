import 'package:flutter/material.dart';
import 'package:flutter_udemy/src/utils/shared_pref.dart';

class ClientServicesListPage extends StatefulWidget {
  const ClientServicesListPage({super.key});

  @override
  State<ClientServicesListPage> createState() => _ClientServicesListState();
}

class _ClientServicesListState extends State<ClientServicesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Servicios'),
      ),
    );
  }
}
