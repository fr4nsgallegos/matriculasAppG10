import 'package:flutter/material.dart';
import 'package:matriculasappg10/models/carrera_model.dart';
import 'package:matriculasappg10/models/institution_model.dart';
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

  List<InstitutionModel> institutionList = [];

  List<MatriculaModel> matriculasList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matriculas app"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              institutionList.add(
                InstitutionModel(
                  nombre: "PUCP",
                  direccion: "Av 123",
                  ruc: "987987987987",
                  telefono: "987987987",
                  matriculasList: [],
                ),
              );
              setState(() {});
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ...institutionList.map(
              (institution) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(institution.nombre),
                      IconButton(
                        onPressed: () {
                          institution.matriculasList.add(
                            MatriculaModel(
                              date: "09/11/2024",
                              hour: "11:26",
                              student: PersonModel(
                                  name: "Benito",
                                  lastname: "Perez",
                                  address: "address"),
                              carrera: carrera1,
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                  ...institution.matriculasList.map(
                    (e) => ListTile(
                      title: Text(
                          "${e.student.name} ${e.student.lastname} - ${e.carrera.nombre}"),
                    ),
                  )
                ],
              ),
            ),
            // ...matriculasList.map(
            //   (e) => ListTile(
            //     title: Text(
            //         "${e.student.name} ${e.student.lastname} - ${e.carrera.nombre}"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
