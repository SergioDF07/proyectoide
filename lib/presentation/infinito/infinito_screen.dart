import 'package:flutter/material.dart';
import 'package:proyectoide/models/infinito_model.dart';
import 'package:proyectoide/services/infinito_service.dart';

class InfinitoScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<InfinitoScreen> createState() => _InfinitoScreenState();
}

class _InfinitoScreenState extends State<InfinitoScreen> {
  List<InfinitoModel> infinitoList = [];
  int page = 1;
  final ScrollController _scroll = ScrollController();

  Future<void> getData() async{
    try{
      final infinitoService = InfinitoService();
      final response = await infinitoService.getInfinito(page);
      setState(() {
        infinitoList.addAll(response);
        page++;
      });
    }catch(e){
      debugPrint("ErRoR $e");
    }
  }

  @override
  void initState(){
    super.initState();
    getData();
    _scroll.addListener((){
      if(_scroll.position.pixels >= _scroll.position.maxScrollExtent - 200){
        getData();
      }
    });
  }

@override
  void dispose(){

    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hola infinito"),),
      body: ListView.builder(
        controller: _scroll,
        itemCount: infinitoList.length,
        itemBuilder: (context, index){
          final item = infinitoList[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text(item.description, maxLines: 2, overflow: TextOverflow.ellipsis,),
            leading: Image.network(item.image, width: 50, height: 50, fit: BoxFit.contain,),

          );
        }
      )
    );
  }
}