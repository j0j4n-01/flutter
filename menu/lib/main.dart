import 'package:flutter/material.dart';
import 'package:menu/screens/menu.dart';

void main(){
  runApp(app());
}

class app extends StatefulWidget {
  const app
({super.key});

  @override
  State<app
> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
    );
  }
}