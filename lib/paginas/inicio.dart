import 'package:flutter/material.dart';
import 'package:aniverse/componentes/cartel_principal.dart';
import 'package:aniverse/componentes/mas_populares_icons.dart';
import 'package:aniverse/componentes/portadas.dart';
import 'package:flutter/widgets.dart';

// Clase que representa la página de inicio de la aplicación
class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Configuración del fondo de la pantalla
      backgroundColor: Colors.black,
      // Contenido de la pantalla, en una lista vertical
      body: ListView(
        children: <Widget>[
          // Componente del cartel principal
          CartelPrincipal(),
          // Seccion de avances proximamente
          this.Avances('Proximamente...', MasPopularesicons(), 10),
          SizedBox(height:  10.0),
          // Seccion de avances de los animes mas populares
          this.Avances('Mas Populares', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          // Seccion de avances de animes de accion
          this.Avances('Accion', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          // Seccion de avances de animes de aventura
          this.Avances('Aventura', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          // Seccion de avances de animes de Isekai
          this.Avances('Isekai', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          // Seccion de avances de animes de romance
          this.Avances('Romance', PortadasAnimes(), 10),
        ],
      ),
      // Barra de navegacion inferior
      bottomNavigationBar: this.Menu_Inferior(),
    );
  }

  // Metodo para construir la barra de navegación inferior
  BottomNavigationBar Menu_Inferior() {
    return BottomNavigationBar(
      // Tipo de barra de navegación
      type: BottomNavigationBarType.fixed,
      // Color de fondo
      backgroundColor: Colors.black,
      // Color de los items seleccionados
      selectedItemColor: Colors.blue,
      // Color de los items no seleccionados
      unselectedItemColor: Colors.white,
      // Estilo del texto de los items seleccionados
      selectedLabelStyle: TextStyle(fontSize: 10.0),
      // Estilo del texto de los otems no seleccionados
      unselectedLabelStyle: TextStyle(fontSize: 10.0),

      // items de la barra de navegacion
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          label: 'Próximamente',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: 'Descargas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Más',
        ),
      ],
    );
  }

  // Metodo para construir la seccion de avances
  Widget Avances(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Titulo de la seccion de avances
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        // Contenedor para mostrar los avances en forma horizontal
        Container(
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
