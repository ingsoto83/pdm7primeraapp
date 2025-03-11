import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  String? nombre ='';
  String? aPaterno ='';
  String? aMaterno = '';
  String? correo = '';
  String? password ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Formulario de Datos",),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlutterLogo(size: 150,),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: TextFormField(
                  validator: (value) => value!.isEmpty ? 'Escribe tu(s) nombre(s)' : null,
                  onSaved: (value)=> nombre = value,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Nombre(s)",
                    labelStyle: TextStyle(color: Colors.blue),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Apellido Paterno",
                    labelStyle: TextStyle(color: Colors.blue),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: "Apellido Materno",
                    labelStyle: TextStyle(color: Colors.blue),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Correo Electrónico",
                    labelStyle: TextStyle(color: Colors.blue),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child:TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    labelText: "Edad",
                    labelStyle: TextStyle(color: Colors.blue),
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                        gapPadding: 10
                    ),
                  ),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, foregroundColor: Colors.white),
                    child: Text("Limpiar")
                ),
                ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        _formKey.currentState!.save();
                      }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
                    child: Text("Guardar")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
