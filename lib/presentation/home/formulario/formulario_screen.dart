import 'package:flutter/material.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {

  String name = '';

  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello sdñlfsjcsck"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  label: Text("klk mano coloca aca tu nombre")
                ),
              ),
              Text("mi nombre es $name"),
          
              SizedBox(height: 16),
          
              TextField(
                controller: _lastNameController,
                onChanged: (_){
                  setState(() {});
                },
                decoration: InputDecoration(
                  label: Text("Last name")
                ),
              ),
              Text("mi apellido: ${_lastNameController.text}"),
              SizedBox(height: 8,),
          
              FilledButton(onPressed: (){
                name = '';
                _lastNameController.clear();
                setState(() {});
              }, child: Text("clear")),
              _FormCustom()
            ],
          ),
          ),
        ),
      )
    );
  }
}

class _FormCustom extends StatefulWidget {
  const _FormCustom({super.key});

  @override
  State<_FormCustom> createState() => _FormCustomState();
}

class _FormCustomState extends State<_FormCustom> {

  final _formController = GlobalKey<FormState>();
  String cellPhone = "";
  void send(){
    if(_formController.currentState!.validate()){
      print("Error");
      return;
    }
    _formController.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formController,
      child: Column(children: [
        TextFormField(
          onSaved: (newValue) => cellPhone = newValue ?? '',
          keyboardType: TextInputType.multiline,
          minLines: 3,
          maxLines: 6,
          decoration: InputDecoration(
            label: Text("CellPhone"),
          ), 
          validator: (value) {
            
            if(value == null || value.isEmpty){
              return 'Phone required (mamahuevo)';
            }

            return null;
          },
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            label: Text("E-mail"),
          ), 
          validator: (value) {
            if(value == null || value.isEmpty){
              return "mail required (bruh, again?)";
            }

            final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');

            if(!emailRegex.hasMatch(value)){
              return "correo inválido";
            }

            return null;
          },
        ),
        FilledButton(onPressed: send, child: Text("Send"))
        ],
      )
    );
  }
}