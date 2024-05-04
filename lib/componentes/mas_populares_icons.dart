import 'package:flutter/material.dart';

class MasPopularesicons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // imagen 1
        buildAnimeImage(
          imageUrl: 'https://www.tvtime.com/_next/image?url=https%3A%2F%2Fartworks.thetvdb.com%2Fbanners%2Fv4%2Fseries%2F85249%2Fposters%2F60aa21fdd247d.jpg&w=640&q=75',
          logoAsset: 'recursos/imgs/fullmetal.png',
        ),
        SizedBox(width: 10.0,), // Espacio entre las imagenes

        // imagen 2
        buildAnimeImage(
          imageUrl: 'https://elcomercio.pe/resizer/XjG6j7_LmDHsNQf-f4Ki_g2KC-M=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/T26JCJCXEBDULA3QQK3HAU7O7A.jpg',
          logoAsset: 'recursos/imgs/los7pecadoscapitales.png',
        ),
        SizedBox(width: 10.0,),

        // imagen 3
        buildAnimeImage(
          imageUrl: 'https://somoskudasai.com/wp-content/uploads/2020/12/portada_sailor-moon-eternal-9.jpg',
          logoAsset: 'recursos/imgs/sailor.png',
        ),
        SizedBox(width: 10.0,),

        // imagen 4
        buildAnimeImage(
          imageUrl: 'https://i.pinimg.com/originals/64/50/e1/6450e1992a5f5c2dfff6d97eae26a3c3.jpg',
          logoAsset: 'recursos/imgs/inuyasha.png',
        ),
        SizedBox(width: 10.0,),
        
        // imagen 5
        buildAnimeImage(
          imageUrl: 'https://static.wikia.nocookie.net/saintseiya/images/a/a7/Saint.jpg/revision/latest?cb=20180525225957&path-prefix=es',
          logoAsset: 'recursos/imgs/caballeros_Zodiaco.png',
        ),
        SizedBox(width: 10.0,),

      ],
    );
  }

  Widget buildAnimeImage({required String imageUrl, required String logoAsset}) {
  // construye una pila para superponer la imagen y el logo
  return Stack(
    alignment: AlignmentDirectional.bottomCenter, // alinea los elementos en la parte inferior central
    children: <Widget>[
      Container(
        height: 110.0,
        width: 110.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(110.0), // borde circular
          border: Border.all(
            color: Colors.red,
            width: 2.0, // grosor del borde
          ),
        ),
        child: ClipOval(
          // recorta la imagen para que sea circular
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover, // ajusta la imagen al contenedor
          ),
        ),
      ),
      // logo del anime
      Image.asset(
        logoAsset, // ruta del activo del logo
        width: 70.0, // ancho del logo
      ),
    ],
  );
}
}