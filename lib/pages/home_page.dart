import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> persona1 = {
    "name": "Jhonny",
    "lastname": "Gallegos",
    "address": "Calle 123",
    "dni": "1234678",
    "nacionalidad": "Peruan@",
  };

  Map<String, dynamic> institucion1 = {
    "name": "Tecsup",
    "direccion": "Calle Lima 123",
    "ruc": "987654321654",
    "matriculas": [],
  };

  Map<String, dynamic> matricula1 = {
    "date": "09/11/2024",
    "hour": "10:21",
    "student": {
      "name": "Jhonny",
      "lastname": "Gallegos",
      "address": "Calle 123",
      "dni": "1234678",
      "nacionalidad": "Peruan@",
    },
    "carrera": "Diseño",
  };

  List<ListTile> personasListTile = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                personasListTile.add(
                  ListTile(
                    title: Text("${persona1["name"]} ${persona1["lastname"]}"),
                    subtitle:
                        Text("${persona1["address"]} -  ${persona1["dni"]}"),
                  ),
                );
                setState(() {});
              },
              child: Text("Agregar usuario"),
            ),
            // ListTile(
            //   title: Text("${persona1["name"]} ${persona1["lastname"]}"),
            //   subtitle: Text("${persona1["address"]} -  ${persona1["dni"]}"),
            // ),
            ...personasListTile
          ],
        ),
      ),
    );
  }
}
