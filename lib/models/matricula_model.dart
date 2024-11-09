import 'package:matriculasappg10/models/carrera_model.dart';
import 'package:matriculasappg10/models/person_model.dart';

class MatriculaModel {
  String date;
  String hour;
  PersonModel student;
  CarreraModel carrera;

  MatriculaModel({
    required this.date,
    required this.hour,
    required this.student,
    required this.carrera,
  });
}
