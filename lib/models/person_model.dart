class PersonModel {
  String name;
  String lastname;
  String address;
  String? dni;
  String nacionality;

  PersonModel({
    required this.name,
    required this.lastname,
    required this.address,
    this.dni,
    this.nacionality = "Peruan@",
  });
}
