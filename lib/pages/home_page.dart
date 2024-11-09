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

  List<int> numeros = [1, 2, 3];

  List<Map<String, dynamic>> listaMapas = [
    {
      "mapa1clave": "valor1",
    },
    {
      "mapa1clave2": "valor2",
    },
  ];

  Map<String, dynamic> mapa1 = {
    "clave": "valor",
    "clave1": 123,
    "list1": [1, 2, 3],
    "mapa1": {"clave": "valor"},
  };

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
                                  name: "Lucas",
                                  lastname: "Perez",
                                  address: "address"),
                              carrera: carrera1,
                            ),
                          );
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {
                          institution.matriculasList.clear();
                          setState(() {});
                        },
                        icon: Icon(Icons.cleaning_services),
                      ),
                    ],
                  ),
                  ...institution.matriculasList.map(
                    (e) => ListTile(
                      title: Text(
                          "${e.student.name} ${e.student.lastname} - ${e.carrera.nombre}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            color: Colors.red,
                            onPressed: () {
                              institution.matriculasList.remove(e);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                            ),
                            color: Colors.blue,
                          )
                        ],
                      ),
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
