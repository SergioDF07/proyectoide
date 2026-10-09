import 'package:flutter/material.dart';

class RutaAbajoScreen extends StatelessWidget {
  const RutaAbajoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Make America Great Again..."),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 1",),
              Tab(text: "Tab 2",)
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Tab number 1"),),
            Center(child: Text("Tab number 2"),)
          ]
        ),
      ),
    );
  }
}