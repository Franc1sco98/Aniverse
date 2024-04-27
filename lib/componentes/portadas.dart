import 'package:flutter/material.dart';

class PortadasAnimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://m.media-amazon.com/images/I/71QJjQRuEWL._AC_UF1000,1000_QL80_.jpg',
          //width: 100.0, este es el alto de la imagen
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
