import 'package:comerciplus/screens/MyApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class main extends StatelessWidget {
  const main({super.key});

  State<main> createState() => _appState();
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _appState extends State<main> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
  
}
