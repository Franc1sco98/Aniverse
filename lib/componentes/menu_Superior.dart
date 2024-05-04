import 'package:flutter/material.dart';

class Menu_Superior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset('recursos/imgs/logo.png', // Carga la imagen del logo desde los assets o recursos
          width: 50.0,
          height: 50.0,
        ),
        Text('Animes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text('Peliculas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text('Proximamente',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
