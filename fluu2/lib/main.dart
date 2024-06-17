import 'package:flutter/material.dart';
import 'package:fluu2/screens/contadorclicks.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ContadorClicks());
  }
}
