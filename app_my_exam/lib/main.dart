import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC APP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
  bool isTitleBold = true;
  double peso = 80;
  double altura = 190;
  String resultado = '';
  String categoria = '';
  String mensaje = '';
  int numero = 0;
  void calcular() {
    double imc = peso / ((altura / 100) * (altura / 100));

    setState(() {
      numero = imc.toInt();
      if (imc < 18.5) {
        resultado = 'PESO BAJO ';
        categoria = 'pesobajo';
        mensaje = 'Debes de comer un poco más.';
      } else if (imc < 24.9) {
        resultado = 'NORMAL';
        categoria = 'normal';
        mensaje = 'Estas muy bien,sigue asi realiza actividad fisica.';
      } else {
        resultado = 'SOBREPESO';
        categoria = 'sobrepeso';
        mensaje = 'Debes de comer mas sano y realiza mas actividad fisica.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC APP'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Bienvenido,selecciona tu peso y altura",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:
                    isTitleBold == true ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Text(
              '${peso.toStringAsFixed(1)}kg',
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
              '${altura.toStringAsFixed(1)}cm',
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
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcular,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/play.jpg',
                      width: 30, height: 30), // Imagen
                  SizedBox(width: 10), // Espacio entre la imagen y el texto
                  Text('Calcular'), // Texto
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Resultado: ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            if (categoria.isNotEmpty)
              Image.asset(
                'assets/images/$categoria.jph',
                width: 230,
                height: 230,
              ),
               SizedBox(height: 20),
               if (numero> 0)
            Text(
              '$numero',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.pink ),
            ),
            SizedBox(height: 20),
            Text(
              '$resultado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '$mensaje',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
