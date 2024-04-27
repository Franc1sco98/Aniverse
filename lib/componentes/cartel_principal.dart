import 'package:flutter/material.dart';
import 'package:aniverse/componentes/Menu_Superior.dart';

// Clase que representa el cartel principal de la pagina de inicio
class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Cabecera del cartel principal
        this.cabecera(),
        // Información sobre el anime
        this.infoAnime(),
        // Botones de acción
        this.botones(),
      ],
    );
  }

  // Método para construir la cabecera del cartel principal
  Widget cabecera() {
    return Stack(
      children: <Widget>[
        // Imagen de fondo del cartel
        Image.network(
          'https://i.blogs.es/5bfa17/mashle/1366_2000.jpeg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        // Contenedor para aplicar un degradado sobre la imagen
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
        // Menu superior
        SafeArea(
          child: Menu_Superior(),
        ),
      ],
    );
  }

  // Metodo para construir la informacion del anime
  Widget infoAnime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Icono y texto de genero: Accion
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Accion',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        // Icono y texto de genero: Aventura
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Aventura',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        // Icono y texto de genero: Isekai
        Icon(Icons.fiber_manual_record, color: Colors.blue, size: 5.0,),
        Text(
          'Isekai',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        // Icono y texto de genero: Romance
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

  // Metodo para construir los botones de accion
  Widget botones() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Botón "Mis Animes"
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
          // Boton "Reproducir"
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
