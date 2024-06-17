// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hojavida/screens/Projects.dart';
import 'package:hojavida/screens/academic_profile.dart';
import 'package:hojavida/screens/knowledge.dart';
import 'package:hojavida/screens/languages.dart';
import 'package:hojavida/screens/profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('Hoja de Vida', style: TextStyle(color: Colors.black)),
          backgroundColor: const Color.fromRGBO(171, 71, 188, 1)),
      drawer: Drawer(
        width: 200,
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: [
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(171, 71, 188, 1)),
              child: const Text('Options',
                  style: TextStyle(color: Colors.black, fontSize: 23.5)),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Inf.Personal'),
              hoverColor: Colors.purple[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_rounded),
              title: const Text('Inf.academica'),
              hoverColor: Colors.purple[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileAcademic(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.emoji_people_sharp),
              title: const Text('Conocimientos'),
              hoverColor: Colors.purple[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Knowledge(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.g_translate),
              title: const Text('Idiomas'),
              hoverColor: Colors.purple[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Languages(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.cases_sharp),
              title: const Text('Proyectos'),
              hoverColor: Colors.purple[100],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Projects(),
                    ));
              },
            )
          ],
        ),
      ),
      body: const Center(child: Text('MI HOJA DE VIDA [|;V ]')),
    );
  }
}
