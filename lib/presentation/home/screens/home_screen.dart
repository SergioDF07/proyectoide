import 'package:flutter/material.dart';
import 'package:proyectoide/presentation/infinito/infinito_screen.dart';
import 'package:proyectoide/presentation/peticiones/peticion_screen.dart';
import 'package:proyectoide/presentation/rutaAbajo/ruta_abajo_screen.dart';
import 'package:proyectoide/presentation/rutaArriba/ruta_arriba_screen.dart';
import 'package:proyectoide/presentation/shared/drawer_custom.dart';

class HomeScreen extends StatelessWidget {
  const new ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCustom(),
      appBar: AppBar(
        title: Text("My Country"),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body:
      ListView(
      children: [
        ListTile(
          title: Text("First Page"),
          subtitle: Text("This is a description about the page"),
          leading: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RutaArribaScreen()));
          },
        ),

        ListTile(
          title: Text("Second Page"),
          subtitle: Text("This is a description about the page"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RutaAbajoScreen()));
          },
        ),

        ListTile(
          title: Text("Peticiones"),
          subtitle: Text("peticiones wacho"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PeticionScreen()));
          },
        ),

        ListTile(
          title: Text("infinito screen"),
          subtitle: Text("This is a description about the page"),
          leading: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => InfinitoScreen()));
          },
        )
      ],
    )
    );
  }
}