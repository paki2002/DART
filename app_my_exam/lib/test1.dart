import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double peso = 70; // Valor inicial del peso
  double altura = 170; // Valor inicial de la altura
  String resultado = ''; // Aquí se mostrará el resultado del IMC
  String categoria = ''; // Categoría de peso
  int imcEntero = 0; // Resultado del IMC como número entero

  void calcularIMC() {
    // Fórmula para calcular el IMC: peso / (altura * altura)
    double imc = peso / ((altura / 100) * (altura / 100));

    setState(() {
      imcEntero = imc.toInt(); // Convertir el IMC en un número entero

      if (imc < 18.5) {
        resultado = 'BAJO PESO';
        categoria = 'bajo_peso';
      } else if (imc < 24.9) {
        resultado = 'NORMAL';
        categoria = 'normal';
      } else {
        resultado = 'SOBREPESO';
        categoria = 'sobrepeso';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Peso (kg): ${peso.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: peso,
              min: 10,
              max: 200,
              onChanged: (newValue) {
                setState(() {
                  peso = newValue;
                });
              },
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
            ),
            Text(
              'Altura (cm): ${altura.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: altura,
              min: 100,
              max: 220,
              onChanged: (newValue) {
                setState(() {
                  altura = newValue;
                });
              },
              activeColor: Colors.purple,
              inactiveColor: Colors.purple.withOpacity(0.2),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularIMC,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/imahes/image1.jpg', width: 30, height: 30), // Imagen
                  SizedBox(width: 10), // Espacio entre la imagen y el texto
                  Text('Calcular'), // Texto
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (categoria.isNotEmpty)
              Text(
                'Categoría de Peso: $categoria',
                style: TextStyle(fontSize: 18),
              ),
            SizedBox(height: 10),
            if (categoria.isNotEmpty)
              Image.asset(
                'assets/$categoria.png', // Ruta de la imagen basada en la categoría de peso
                width: 100,
                height: 100,
              ),
            SizedBox(height: 10),
            if (imcEntero > 0) // Mostrar el resultado del IMC entero si es mayor que 0
              Text(
                'IMC: $imcEntero',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
