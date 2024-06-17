import 'package:flutter/material.dart';

class Rectangulo extends StatefulWidget {
  const Rectangulo({super.key});

  @override
  State<Rectangulo> createState() => _RectanguloState();
}

class _RectanguloState extends State<Rectangulo> {
  //controladores para las cajas de texto
  TextEditingController largocontroller = TextEditingController();
  TextEditingController anchocontroller = TextEditingController();
  String resultado = '';
  String? _valorseleccionado;
  String? total;

  final List<String> unidadesmedida = ['M', 'CM', 'KM'];

  void calcularArea() {
    try {
      double largo = double.parse(largocontroller.text);
      double ancho = double.parse(anchocontroller.text);
      double area = largo * ancho;
      resultado = (area.toString());

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  void calcularPerimetro() {
    try {
      double largo = double.parse(largocontroller.text);
      double ancho = double.parse(anchocontroller.text);
      double perimetro = largo + largo + ancho + ancho;
      resultado = (perimetro.toString());

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangulo'),
        leading: const Icon(Icons.rectangle),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 400,
          child: Column(
            children: [
              DropdownButton<String>(
                hint: Text('seleccione una unidad de medida'),
                onChanged:(String? nuevovalor){
                  setState(() {
                    _valorseleccionado= nuevovalor;
                  });
                },
                items: unidadesmedida.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem(child: Text(value));
                  },
                ).toList(),
              ),


              // -------------------------------------------
              TextField(
                controller: largocontroller,
                decoration: const InputDecoration(
                    labelText: 'Largo',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 148, 29, 169))),
                keyboardType: TextInputType.number,
                maxLength: 3,
                style: const TextStyle(color: Color.fromARGB(255, 62, 10, 80)),
              ),
              TextField(
                controller: anchocontroller,
                decoration: const InputDecoration(
                    labelText: 'Ancho',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.purple)),
                keyboardType: TextInputType.number,
                maxLength: 3,
                style: const TextStyle(color: Color.fromARGB(255, 62, 10, 80)),
              ),
              ElevatedButton(
                  onPressed: () {
                    calcularArea();
                    print(_valorseleccionado);
                  },
                  child: const Text('Calcular area')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    calcularPerimetro();
                  },
                  child: const Text('Calcular perimetro')),
              const SizedBox(
                height: 10,
              ),
              Text('Resultado:$resultado'),
            ],
          ),
        ),
      ),
    );
  }
}
