import 'package:flutter/material.dart';

// ignore: camel_case_types
class Knowledge extends StatefulWidget {
  const Knowledge({super.key});

  @override
  State<Knowledge> createState() => _ProfileState();
}

// ignore: camel_case_types
class _ProfileState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conocimientos'),
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
                      'Conocimientos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('php',textAlign: TextAlign.center,),
                    Text('laravel',textAlign: TextAlign.center),
                    Text('java script',textAlign: TextAlign.center),
                    Text('c#',textAlign: TextAlign.center),
                    Text('css',textAlign: TextAlign.center),
                    Text('html',textAlign: TextAlign.center),
                    Text('dart',textAlign: TextAlign.center),
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
