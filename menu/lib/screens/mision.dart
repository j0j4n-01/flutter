import 'package:flutter/material.dart';

class Mision extends StatefulWidget {
  const Mision({super.key});

  @override
  State<Mision> createState() => _MisionState();
}

class _MisionState extends State<Mision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.menu_book),
          title: const Text("menu"),
          backgroundColor: Color.fromARGB(255, 13, 87, 125),
        ),
    );
  }
}