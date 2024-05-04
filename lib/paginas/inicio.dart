import 'package:flutter/material.dart';
import 'package:aniverse/componentes/cartel_principal.dart';
import 'package:aniverse/componentes/mas_populares_icons.dart';
import 'package:aniverse/componentes/portadas.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.Avances('Proximamente...', MasPopularesicons(), 1),
          SizedBox(height:  10.0),
          this.Avances('Mas Populares', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          this.Avances('Accion', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          this.Avances('Aventura', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          this.Avances('Isekai', PortadasAnimes(), 10),
          SizedBox(height:  10.0),
          this.Avances('Romance', PortadasAnimes(), 10),
        ],
      ),
      // Barra de navegacion inferior
      bottomNavigationBar: this.Menu_Inferior(),
    );
  }
  
  BottomNavigationBar Menu_Inferior() {
    return BottomNavigationBar(
      // Tipo de barra de navegacion
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

  //seccion de avances
  Widget Avances(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //titulo de la seccion de avances
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ),
        //este codigo sirve para mostrar los avances en forma horizontal
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
