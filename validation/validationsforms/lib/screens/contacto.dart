import 'package:flutter/material.dart';

class Contacto extends StatefulWidget {
  const Contacto({super.key});

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('contacto'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          labelText: 'dijite el nombre del usuario'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'porfavor ingrese su nombre';
                        }
                        return null;
                      }),
                  SizedBox(height: 5),
                  TextFormField(
                    textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          labelText: 'dijite su email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'porfavor ingrese su email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Por favor, ingrese un correo electrónico válido';
                          }
                        return null;
                        }
                      ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Form valido'),
                            backgroundColor: Colors.green[300],
                            ),
                        );
                      }
                    },
                    child: Text('enviar'),
                  )
                ],
              )),
        ));
  }
}
