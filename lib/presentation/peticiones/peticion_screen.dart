import 'package:flutter/material.dart';
import 'package:proyectoide/models/product_model.dart';
import 'package:proyectoide/services/product_service.dart';

class PeticionScreen extends StatelessWidget {
  const PeticionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hola peticion"),),
      body: FutureBuilder(
        future: ProductService().getProduct(), 
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }else if(snapshot.hasError){
            return Center(child: Text("No disponible"),);
          }else if(snapshot.hasData){
            final List<ProductModel> data = snapshot.data ?? [];
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i){
                return ListTile(
                  title: Text(data[i].title),
                  subtitle: Text(data[i].description),
                );
              }
            );
          }else {
            return Center(child: Text("No hay datos wachito"),);
          }
        }
      ),
    );
  }
}