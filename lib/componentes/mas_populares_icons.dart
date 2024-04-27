import 'package:flutter/material.dart';

class MasPopularesicons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Contenedor para la imagen del anime mas popular
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            // Contenedor circular con borde rojo
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                // Imagen del anime
                child: Image.network(
                  'https://www.tvtime.com/_next/image?url=https%3A%2F%2Fartworks.thetvdb.com%2Fbanners%2Fv4%2Fseries%2F85249%2Fposters%2F60aa21fdd247d.jpg&w=640&q=75',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Logo del anime
            Image.asset(
              'recursos/imgs/fullmetal.png',
              width: 70.0,
            ),
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
