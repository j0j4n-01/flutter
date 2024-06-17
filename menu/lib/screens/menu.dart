import 'package:flutter/material.dart';
import 'package:menu/screens/array.dart';
import 'package:menu/screens/calculadora.dart';
import 'package:menu/screens/mision.dart';
import 'package:menu/screens/productos.dart';
import 'package:menu/screens/rectangulo.dart';
import 'package:menu/screens/vision.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_book),
          title: const Text("menu"),
          backgroundColor: Color.fromARGB(255, 13, 87, 125),
        ),
        body: ListView(
          children: [
           ListTile(
              leading: Icon(Icons.book),
              title: Text('Mision'),
              subtitle: Text("aqui la mision"),
              trailing: Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const Mision());
                Navigator.push(context, route);
              }, 
            ),
             ListTile(
              leading: Icon(Icons.book),
              title: Text('Vision'),
              subtitle: Text("aqui la vision"),
              trailing: Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const Vision());
                Navigator.push(context, route);
              },
            ),
             ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text('Productos'),
              subtitle: Text("aqui los productos"),
              trailing: Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const Productos());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Rectangulo'),
              subtitle: const Text("Area y Perimetro"),
              trailing: const Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const Rectangulo());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('calculadora'),
              subtitle: const Text("operaciones basicas"),
              trailing: const Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const calculadora());
                Navigator.push(context, route);
              },
            ),
             ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Listado'),
              subtitle: const Text("ambientes torre norte"),
              trailing: const Icon(Icons.navigate_next_outlined),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const ejemploarray());
                Navigator.push(context, route);
              },
            )
          ],
        ));
  }
}
