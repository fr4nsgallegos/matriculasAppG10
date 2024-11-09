import 'package:flutter/material.dart';

class TextfieldExample extends StatelessWidget {
  TextEditingController nombreController = TextEditingController();
  TextEditingController contrasenaController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                style: TextStyle(
                    color: Colors
                        .red), //controla el estilo del texto ingresado por el usuario
                controller: nombreController,
                maxLength: 10, //tamaño máximo de caracteres
                decoration: InputDecoration(
                  counterText: "", //oculta el contador de caracteres
                  // label: Text("Nombre"),
                  labelText:
                      "Nombre", // texto de etiqueta que aparece cuando el campo no esta seleccionado
                  hintText:
                      "Ingrese el nombre completo", //texto de ayuda dentro del campo
                  // prefix: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                focusNode: _focusNode,
                obscureText: true,
                style: TextStyle(
                    color: Colors
                        .red), //controla el estilo del texto ingresado por el usuario
                controller: contrasenaController,
                decoration: InputDecoration(
                  labelText:
                      "Contraseña", // texto de etiqueta que aparece cuando el campo no esta seleccionado
                  hintText:
                      "Ingrese la contraseña", //texto de ayuda dentro del campo
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility), //icono a la derecha
                  // suffix: Icon(Icons.visibility),
                ),
                onChanged: (value) {
                  //escucha los cambios en el campo y permite realizar alguna acción
                  print("La contraseña debe tener al menos 8 caracteres");
                  print(value);
                },
              ),
              SizedBox(
                height: 34,
              ),
              ElevatedButton(
                onPressed: () {
                  print(nombreController.text);
                },
                child: Text("Imprimir valor"),
              ),
              ElevatedButton(
                onPressed: () {
                  _focusNode.requestFocus(); //enfoca el textfield
                },
                child: Text("Enfocar textField"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
