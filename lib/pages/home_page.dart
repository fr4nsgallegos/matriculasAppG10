import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Map<String, dynamic> persona1 = {
    "name": "Jhonny",
    "lastname": "Gallegos",
    "address": "Calle 123",
    "dni": "1234678",
    "nacionalidad": "Peruan@",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ListTile(),
          ],
        ),
      ),
    );
  }
}
