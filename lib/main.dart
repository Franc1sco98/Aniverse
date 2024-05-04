import 'package:aniverse/paginas/inicio.dart';
import 'package:flutter/material.dart';
//este codigo es el que arranca o inicia la app
void main() {
  runApp(Aniverse());
}

// Esta es la clase principal de la aplicacion
class Aniverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InicioPage(),
      debugShowCheckedModeBanner: false, //este comando sirve para quitar la linea roja que aparaece en la parte superior derecha del emulador "debug" 
    );
  }
}
