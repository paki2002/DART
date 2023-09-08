import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dadoIzq = 1;
  int dadoDer = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Dice App'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print("Dado izquierdo");
                  dadoIzq = 4;
                  print(dadoIzq);
                  setState(() {
                    
                  });
                },
                child: Image.asset("assets/images/dice$dadoIzq.png"),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  print("Dado derecho");
                },
                child: Image.asset("assets/images/dice$dadoDer.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}