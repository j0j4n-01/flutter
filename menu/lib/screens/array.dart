import 'package:flutter/material.dart';

// ignore: camel_case_types
class ejemploarray extends StatefulWidget {
  const ejemploarray({super.key});

  @override
  State<ejemploarray> createState() => _ejemploarrayState();
}

final List<String> ambientes = ['101', '102', '103', '104'];

// ignore: camel_case_types
class _ejemploarrayState extends State<ejemploarray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.list_alt_outlined),
          title: const Text('listado de ambientes'),
        ),
        body: ListView.builder(
            itemCount: ambientes.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(ambientes[index]),
                subtitle: Text(index.toString()),
              );
            }));
  }
}
