import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context1) {
    showDialog(
        context: context1,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Titulo del Alert 1"),
            backgroundColor: Colors.white,
            content: Text("Este es el contenido del alter 1"),
            actions: [
              /*ElevatedButton(
                onPressed: () {},
                child: Text("No"),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
              ),*/
              TextButton(
                onPressed: () {},
                child: Text("Aceptar"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.black45,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert 1"),
            ),
          ],
        ),
      ),
    );
  }
}