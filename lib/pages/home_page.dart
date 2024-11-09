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
            ListTile(
              title: Text("Nombre"), //título
              subtitle: Text("Información adicional"), //subtítulo
              // leading: Icon(Icons.settings), //widget a la izquierda, al inicio
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/4792/4792929.png"),
              ), //colocando una imagen como leading
              trailing:
                  Icon(Icons.arrow_forward_ios), //widget a la derecha, al final
              onTap: () {
                print("Este es un Listile");
              }, //Lo convierte en un botón

              contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical:
                      10), //espaciado interno entre el contenido y el límite del Tile
              tileColor: Colors.red, //Color de fondo del Tile
              // selected: true,
              // selectedTileColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
