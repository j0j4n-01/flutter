import 'package:flutter/material.dart';

// ignore: camel_case_types
class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProfileState();
}

// ignore: camel_case_types
class _ProfileState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Center(
        child: Card(
          color: Colors.purple[100],
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const SizedBox(
            width: 300,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'PROYECTOS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('calculadora el dart',textAlign: TextAlign.center),
                    Text('modulo de gestion de compras en laravel',textAlign: TextAlign.center),
                    Text('modulo de gestion de productos y cat.productos en .net',textAlign: TextAlign.center),
                    Text('creacion de apis en node.js',textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
