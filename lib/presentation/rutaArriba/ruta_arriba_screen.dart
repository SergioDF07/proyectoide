import 'package:flutter/material.dart';

final List<Widget> _screen = [
  Text("First tab screen"),
  Text("Second tab screen"),
  Text("Third tab screen")
];

class RutaArribaScreen extends StatefulWidget {
  const RutaArribaScreen({super.key});

  @override
  State<RutaArribaScreen> createState() => _RutaArribaScreenState();
}

class _RutaArribaScreenState extends State<RutaArribaScreen> {
  int _indicador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terraria"),),
      body: _screen[_indicador],  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (value) {
          _indicador = value;
          setState(() {
            
          });
        },
        items: [
         BottomNavigationBarItem(
          icon: Icon(Icons.add_photo_alternate_rounded),
          label: "tab1" 
         ),
         BottomNavigationBarItem(
          icon: Icon(Icons.add_photo_alternate_rounded),
          label: "tab2"

         ),
         BottomNavigationBarItem(
          icon: Icon(Icons.add_photo_alternate_rounded),
          label: "tab3"
         )
        ]
      ),
    );
  }
}