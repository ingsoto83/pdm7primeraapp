import 'package:flutter/material.dart';
import 'package:pdm7primeraapp/travel_place_page.dart';

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
  bool passVisible = false;

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
                  validator: (value) => value!.isEmpty ? 'Escribe tu(s) nombre(s)...!' : null,
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
                  validator: (value) => value!.isEmpty ? 'Escribe tu apellido paterno...!' : null,
                  onSaved: (value)=> aPaterno = value,
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
                  validator: (value) => value!.isEmpty ? 'Escribe tu apellido materno...!' : null,
                  onSaved: (value)=> aMaterno = value,
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
                  validator: (value) => value!.isEmpty ? 'Escribe tu correo electrónico...!' : null,
                  onSaved: (value)=> correo = value,
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
                  validator: (value) => value!.isEmpty ? 'Escribe tu contraseña...!' : value.length < 8 ? 'Contraseña debe ser mínimo de 8 cars...!' : null,
                  onSaved: (value)=> password = value,
                  obscureText: passVisible ? false : true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          passVisible = !passVisible;
                        });
                      },
                      child: Icon(passVisible ? Icons.visibility_off : Icons.visibility)
                    ),
                    labelText: "Contraseña",
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
                    onPressed: (){
                      _formKey.currentState!.reset();
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, foregroundColor: Colors.white),
                    child: Text("Limpiar")
                ),
                ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        _formKey.currentState!.save();
                        /*ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              duration: Duration(seconds: 3),
                              showCloseIcon: true,
                              backgroundColor: Colors.green,
                              content: Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Expanded(child: Text("Información guardada con éxito!!!"))
                                ],
                              )
                          )
                        );*/
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> TravelPlacePage()));
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
