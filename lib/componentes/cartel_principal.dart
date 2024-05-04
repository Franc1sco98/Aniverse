import 'package:flutter/material.dart';
import 'package:aniverse/componentes/Menu_Superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // aqui estamos llamando a la funcion de cabecera del cartel principal
        this.cabecera(),
        // aqui estamos llamando a la funcion de la informacion sobre el anime
        this.infoAnime(),
        // aqui estamos llamando a la funcion de los botones de accion
        this.botones(),
      ],
    );
  }

  // metodo para construir la cabecera del cartel principal
  Widget cabecera() {
    return Stack(
      children: <Widget>[
        // imagen de fondo del cartel, la que aparece en grande
        Image.network(
          'https://i.blogs.es/5bfa17/mashle/1366_2000.jpeg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        // degradado sobre la imagen de claro a un tono oscuro
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.5),
              ],
            ),
          ),
        ),
        // menu superior
        SafeArea(
          child: Menu_Superior(),
        ),
      ],
    );
  }

  // metodo para construir la informacion del anime
  Widget infoAnime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Accion',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Aventura',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Isekai',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Romance',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  // metodo para construir los botones de accion
  Widget botones() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // boton "Mis Animes"
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 5.0),
              Text(
                'Mis Animes',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
          // boton "Reproducir"
          ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(
              Icons.play_arrow, 
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          // Botón "Informacion"
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 5.0),
              Text(
                'Informacion',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
