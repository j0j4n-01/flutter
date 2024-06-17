import 'package:flutter/material.dart';

class ProfileAcademic extends StatefulWidget {
  const ProfileAcademic({super.key});

  @override
  State<ProfileAcademic> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileAcademic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Academic'),
      ),
      body: Center(
        child: Card(
          color: Colors.purple[100],
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const SizedBox(
            width: 300,
            height: 400,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Informacion academica',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'PRIMARIA: Gerardo valencia cano',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'BACHILLER: Jesus rey',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'TECNOLOGIA: Sena',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileAcademic(),
  ));
}

