import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  String contenido = 'Home';
  void itemseleccionado(index) {
    selectedIndex = index;

    switch (index) {
      case 0:
        contenido = 'Home';
        break;
      case 1:
        contenido = 'Settings';
        break;
      case 2:
        contenido = 'Search';
        break;
      default:
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('menu 2'),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: Center(child:Text(contenido)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepPurple[600],
        onTap: itemseleccionado,
      ),
    );
  }
}
