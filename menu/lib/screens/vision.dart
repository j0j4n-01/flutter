import 'package:flutter/material.dart';

class Vision extends StatefulWidget {
  const Vision({super.key});

  @override
  State<Vision> createState() => _VisionState();
}

class _VisionState extends State<Vision> {
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
