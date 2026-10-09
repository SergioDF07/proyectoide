import 'package:flutter/material.dart';
import 'package:proyectoide/presentation/rutaAbajo/ruta_abajo_screen.dart';
import 'package:proyectoide/presentation/rutaArriba/ruta_arriba_screen.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.redAccent),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA5XM2PsMVORi1kfQ4ExQpO09vlPkzrMQqwM7SIIq9PA&s=10"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(

                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.indigoAccent),),
                              Text("My title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.indigoAccent),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Direction 1"),
                  subtitle: Text("This is a description about the page"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RutaArribaScreen()));
                  },
                ),
                ListTile(
                  title: Text("Direction 2"),
                  subtitle: Text("This is a description about the page"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RutaAbajoScreen()));
                  },
                ),
              ],
            )
          ),
          ListTile(
            title: Text("Final"),
          )
        ],
      ),
    );
  }
}