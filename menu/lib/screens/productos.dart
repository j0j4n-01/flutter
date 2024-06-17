import 'package:flutter/material.dart';

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_book),
        title: const Text("Menú"),
        backgroundColor: const Color.fromARGB(255, 13, 87, 125),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildProductCard(
              "Producto 1",
              "Descripción del Producto 1",
              29.99,
              "https://via.placeholder.com/150"
          ),
          _buildProductCard(
              "Producto 2",
              "Descripción del Producto 2",
              49.99,
              "https://via.placeholder.com/150"
          ),
          _buildProductCard(
              "Producto 3",
              "Descripción del Producto 3",
              19.99,
              "https://via.placeholder.com/150"
          ),
          _buildProductCard(
              "Producto 4",
              "Descripción del Producto 4",
              99.99,
              "https://via.placeholder.com/150"
          ),
          _buildProductCard(
              "Producto 5",
              "Descripción del Producto 5",
              59.99,
              "https://via.placeholder.com/150"
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String description, double price, String imageUrl) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          ListTile(
            title: Text(name),
            subtitle: Text(description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\$$price",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
