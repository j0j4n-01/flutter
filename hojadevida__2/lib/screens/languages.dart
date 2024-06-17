import 'package:flutter/material.dart';

// ignore: camel_case_types
class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _ProfileState();
}

// ignore: camel_case_types
class _ProfileState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages'),
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
                      'IDIOMAS',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('español',textAlign: TextAlign.center),
                    Text('ingles',textAlign: TextAlign.center),
                    Text('japones',textAlign: TextAlign.center),
                    Text('arabe',textAlign: TextAlign.center),
                    Text('ruso',textAlign: TextAlign.center),
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
