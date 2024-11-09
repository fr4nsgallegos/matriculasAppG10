import 'package:matriculasappg10/models/matricula_model.dart';

class InstitutionModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<MatriculaModel> matriculasList;
  InstitutionModel({
    required this.nombre,
    required this.direccion,
    required this.ruc,
    required this.telefono,
    required this.matriculasList,
  });
}
