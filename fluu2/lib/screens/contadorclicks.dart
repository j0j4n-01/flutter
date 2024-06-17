import 'package:flutter/material.dart';

class ContadorClicks extends StatelessWidget {
  const ContadorClicks({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Contador clicks',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue,
          leading: const Icon(
            Icons.air_sharp,
            color: Colors.greenAccent,
            size: 45,
          )),
      body: const Center(
          child: Text('numero de clicks: ', style: TextStyle(fontSize: 25))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_alarm_rounded),
        onPressed: () {
          contador++;
          print(ContadorClicks);
        },
      ),
    );
  }
}
