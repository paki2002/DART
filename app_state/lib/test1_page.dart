import 'package:flutter/material.dart';

class Test1Page extends StatefulWidget {
  const Test1Page({super.key});

  @override
  State<Test1Page> createState() => _Test1PageState();
}

class _Test1PageState extends State<Test1Page> {
  List<Map<String, dynamic>> data = [
    {'id': 1, 'nombre': 'Auto modelo 1', 'image': 'assets/images/image1.jpg'},
    {'id': 2, 'nombre': 'Auto modelo 2', 'image': 'assets/images/image2.jpg'},
    {'id': 3, 'nombre': 'Auto modelo 3', 'image': 'assets/images/image3.jpg'},
    {'id': 4, 'nombre': 'Auto modelo 4', 'image': 'assets/images/image4.jpg'},
    {'id': 5, 'nombre': 'Auto modelo 5', 'image': 'assets/images/image5.jpg'},
    {'id': 6, 'nombre': 'Auto modelo 6', 'image': 'assets/images/image6.jpg'},
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrusel de Imagenes"),
      ),
      body: Column(
        children: [
          Text(
            "${data[index]["nombre"]}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image.asset(
            data[index]["image"],
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  index--;
                  setState(() {});
                },
                child: Text("Anterior"),
              ),
              ElevatedButton(
                onPressed: () {
                  index++;
                  setState(() {});
                },
                child: Text("Siguiente"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}