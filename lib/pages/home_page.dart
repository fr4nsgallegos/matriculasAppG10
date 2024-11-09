import 'package:flutter/material.dart';
import 'package:matriculasappg10/models/carrera_model.dart';
import 'package:matriculasappg10/models/matricula_model.dart';
import 'package:matriculasappg10/models/person_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersonModel personaModel1 = PersonModel(
    name: "Mathias",
    lastname: "Parra",
    address: "Av 123",
  );

  CarreraModel carrera1 = CarreraModel("Ing. Sistemas", "5 años");

  List<MatriculaModel> matriculasList = [];

  List<ListTile> personasListTile = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                matriculasList.add(
                  MatriculaModel(
                    date: "09/11/2024",
                    hour: "11:26",
                    student: personaModel1,
                    carrera: carrera1,
                  ),
                );
                setState(() {});
              },
              child: Text("Agregar usuario"),
            ),
            ...matriculasList.map(
              (e) => ListTile(
                title: Text("${e.student.name} ${e.student.lastname}"),
              ),
            )
            // ListTile(
            //   title: Text("${persona1["name"]} ${persona1["lastname"]}"),
            //   subtitle: Text("${persona1["address"]} -  ${persona1["dni"]}"),
            // ),
            // ...personasListTile
          ],
        ),
      ),
    );
  }
}
