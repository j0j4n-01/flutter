import 'package:flutter/material.dart';

class calculadora extends StatefulWidget {
  const calculadora({super.key});

  @override
  State<calculadora> createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
  //controladores para las cajas de texto
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String resultado = '';

  void suma() {
    try {
      double num1 = double.parse(num1controller.text);
      double num2 = double.parse(num2controller.text);
      if (num1 < 0 || num2 < 0) {
        resultado = "No se permiten numeros negativos";
      } else {
        double total = num1 + num2;
        resultado = (total.toString());
      }

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  void resta() {
    try {
      double num1 = double.parse(num1controller.text);
      double num2 = double.parse(num2controller.text);
      if (num1 < 0 || num2 < 0) {
        resultado = "no se valen numeros negativos";
      } else {
        double total = num1 - num2;
        resultado = (total.toString());
      }

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  void multi() {
    try {
      double num1 = double.parse(num1controller.text);
      double num2 = double.parse(num2controller.text);
      if (num1 < 0 || num2 < 0) {
        resultado = "no se permiten numeros negativos";
      } else {
        double total = num1 * num2;
        resultado = (total.toString());
      }

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  void divi() {
    try {
      double num1 = double.parse(num1controller.text);
      double num2 = double.parse(num2controller.text);
      if (num1 < 0 || num2 < 0) {
        resultado = "no se permiten numeros negativos";
      }else{
        double total = num1 / num2;
        resultado = (total.toString());
      }
      

      setState(() {});
    } catch (e) {
      resultado = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('calculadora'),
        leading: const Icon(Icons.calculate),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 400,
          child: Column(
            children: [
              TextField(
                controller: num1controller,
                decoration: const InputDecoration(
                    labelText: 'numero 1',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 148, 29, 169))),
                keyboardType: TextInputType.number,
                maxLength: 3,
                style: const TextStyle(color: Color.fromARGB(255, 62, 10, 80)),
              ),
              TextField(
                controller: num2controller,
                decoration: const InputDecoration(
                    labelText: 'numero 2',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.purple)),
                keyboardType: TextInputType.number,
                maxLength: 3,
                style: const TextStyle(color: Color.fromARGB(255, 62, 10, 80)),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        suma();
                      },
                      child: const Text('+')),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        resta();
                      },
                      child: const Text('-')),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        multi();
                      },
                      child: const Text('*')),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        divi();
                      },
                      child: const Text('/')),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              Text('Resultado:$resultado'),
            ],
          ),
        ),
      ),
    );
  }
}
